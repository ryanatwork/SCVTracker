class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :student_team
      can :manage, [Student]
    elsif user.has_role? :crime_tips_team
      can :manage, [CrimeTips]
    end
  end
end
