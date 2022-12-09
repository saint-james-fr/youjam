class Review < ApplicationRecord
  belongs_to :reviewee, class_name: "User"
  belongs_to :reviewer, class_name: "User"

  validates :rating, numericality: { less_than_or_equal_to: 5 }
end
