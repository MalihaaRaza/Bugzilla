class ProjectPolicy < ApplicationPolicy
  attr_reader :user, :manage

  def initialize(user, manage)
    @user = user
    @manage = manage
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
    true
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
      if(user_id: @user.id )
        scope
      else
        raise 'Not allowed'
      end
    end

    private

    attr_reader :user, :scope
  end
end


