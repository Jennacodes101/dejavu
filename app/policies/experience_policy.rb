class ExperiencePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    # user => current_user (pundit)
    # record => @experience (pundit)
    user == record.user
  end

  def destroy?
    user == record.user
  end

end
