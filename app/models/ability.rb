class Ability
  include CanCan::Ability

  def initialize(user)
    if user.type_user == 'admin' && !current_user.nil?
      can :manage, :all
    elsif user.type_user == 'visitor' && !current_user.nil?
      cannot :manage, Period
      cannot :manage, Discipline
      cannot :manage, Teacher
      cannot :manage, User
      cannot :manage, Session
      can :manage, Mention
      asdas
    else
      cannot :manage, Period
      cannot :manage, Discipline
      cannot :manage, Teacher
      cannot :manage, User
      cannot :manage, Session
      cannot :manage, Mention
    end
  end
end
