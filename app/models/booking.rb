class Booking < ApplicationRecord
  belongs_to :jam
  belongs_to :user

  validates :message, presence: true
  validates :status, inclusion: { in: ["pending", "accepted", "declined", "cancelled"] }
  #scope :pending, -> { where("price > ?", amount) }
end
