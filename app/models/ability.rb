class Ability
  include CanCan::Ability

  def initialize(user)
    if user.type_user == 'admin'
      can :read, :all
    elsif user.type_user == 'visitor'
      cannot :manage, Period
      can :read, Discipline
      cannot :create, Discipline
      cannot :update, Discipline
      cannot :destroy, Discipline
      cannot :manage, Teacher
      cannot :manage, User
      cannot :manage, Session
    end
  end
end
