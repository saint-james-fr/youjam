class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.where(chatmembers: {user: user}).joins(:chatmembers)
    # end
  end

  def create?
    record.chatroom.users.include?(user)
  end
end
