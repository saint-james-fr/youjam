class Creation < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :file, presence: true
end
