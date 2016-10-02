class Ability
  include CanCan::Ability

  def initialize(user)
    if user.type_user == 'admin'
      can :read, :all
    elsif user.type_user == 'visitor'
      cannot :manage, Period
      cannot :manage, Discipline
      cannot :manage, Teacher
      cannot :manage, User
      cannot :manage, Session
    end
  end
end
