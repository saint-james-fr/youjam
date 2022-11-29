class Booking < ApplicationRecord
  belongs_to :jam
  belongs_to :user

  validates :message, presence: true
  validates :status, inclusion: { in: ["pending", "accepted", "declined", "cancelled"] }

  scope :pending, -> { where(status: "pending") }
  scope :accepted, -> { where(status: "accepted") }
  scope :declined, -> { where(status: "declined") }
  scope :cancelled, -> { where(status: "cancelled") }
end
