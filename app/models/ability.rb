class Ability
  include CanCan::Ability

  def initialize(user)
    if user.type_user == 'admin'
      can :read, :all
    elsif user.type_user == 'visitor'
      cannot :manage, Period
    end
  end
end
