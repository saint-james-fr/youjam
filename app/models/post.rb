class Post < ApplicationRecord
  belongs_to :jam
  belongs_to :user

  validates :content, presence: true
end
