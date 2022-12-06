class Chatroom < ApplicationRecord
  has_many :messages
  has_many :chatmembers
  has_many :users, through: :chatmembers

  def title(user)
    if name == "" || name.nil?
      members_wo_me = chatmembers.reject { |chatmember| chatmember.user_id == user.id }
      members_wo_me.map do |chatmember|
        chatmember.user.first_name
      end.join(", ")
    else
      name.capitalize
    end
  end
end
