class ProjectPolicy < ApplicationPolicy
  attr_reader :user, :project

  def initialize(user, project)
    @user = user
    @project = project
  end


  def show?
    true
  end

  def new?
    if(user.user_type == 'Manager')
      true
    else
      false
    end
  end

  def create?
    if(user.user_type == 'Manager')
      true
    else
      false
    end
  end

  def destroy?
    if(user.user_type == 'Manager')
      true
    else
      false
    end
  end

  def update?
    if(user.user_type == 'Manager')
      true
    else
      false
    end
  end


  class Scope < Scope
    def initialize(user, scope)
      @user  = user
      @scope = scope
    end

    def resolve
      if(user.user_type == 'Manager')
        scope
      else
        raise 'Not allowed'
      end
    end

    private

    attr_reader :user, :scope
  end
end


