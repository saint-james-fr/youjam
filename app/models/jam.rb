class Jam < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  belongs_to :user
  has_many :bookings
  has_many :posts
  has_one_attached :photo

  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :instruments_list, presence: true
  validates :capacity, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :jam_date, presence: true, comparison: { greater_than_or_equal_to: DateTime.now}

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description_and_instruments_lists,
                  against: [:title, :description, :instruments_list],
                  using: {
                    tsearch: { prefix: true }
                  }

  def accepted_bookings
    bookings.where(status: "accepted")
  end

  def pending_bookings
    bookings.where(status: "pending")
  end

  def declined_bookings
    bookings.where(status: "declined")
  end
end
