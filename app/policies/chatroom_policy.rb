class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(chatmembers: { user: user }).joins(:chatmembers)
    end
  end

  def index?
    true
  end

  def show?
    record.users.where(id: user.id).any?
  end
end
