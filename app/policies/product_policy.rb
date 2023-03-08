class ProductPolicy < ApplicationPolicy
  # class Scope < Scope
  # end
  def new?
    user&.admin?
  end
  def create?
    user&.admin?
  end
end
