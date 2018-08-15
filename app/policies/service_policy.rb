class ServicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def edit?
    current_user?
  end

  def update?
    current_user?
  end

  def destroy?
    current_user?
  end

  private
  def current_user?
    @user == @record.user
  end
end
