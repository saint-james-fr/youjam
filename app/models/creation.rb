class Creation < ApplicationRecord
  belongs_to :user
  validates :creation_url, presence: true
  # validates :file, presence: true
  # has_one_attached :file
end
