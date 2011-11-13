class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.admin?
      can :manage, :all
    elsif user.has_role? :super_admin
      can :manage, [CrimeTip, Student]
    elsif user.has_role? :school_deputy
      can :manage, [Student]
    elsif user.has_role? :crime_tip_deputy
      can :manage, [CrimeTip]
    end
  end
end
