class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  validates :content, presence: true

  def sender?(a_user)
    user.id == a_user.id
  end
end
