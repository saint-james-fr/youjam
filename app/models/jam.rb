class Jam < ApplicationRecord
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

end
