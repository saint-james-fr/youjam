class PostPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def destroy?
    record.user == user
  end

  def new?
    destroy?
  end

  def create?
    destroy?
  end

  def update?
    destroy?
  end

  def edit?
    destroy?
  end
end
