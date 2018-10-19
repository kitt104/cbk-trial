class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def home?
    return true
  end

  def shop?
    return true
  end

  def club?
    return true
  end

  def tuition?
    return true
  end

  def members?
     user.member? || user.admin?
  end

end
