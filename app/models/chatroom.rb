class Chatroom < ApplicationRecord
  has_many :messages
  has_many :chatmembers
  has_many :users, through: :chatmembers
end
