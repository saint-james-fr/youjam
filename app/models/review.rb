class Review < ApplicationRecord
  belongs_to :reviewee, class_name: "User"
  belongs_to :reviewer, class_name: "User"

  validates :rating, :numericality => { :less_than => 5 }
end
