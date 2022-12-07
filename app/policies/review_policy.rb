class ReviewPolicy < ApplicationPolicy

  def create?
    record.reviewer == user
  end
end
