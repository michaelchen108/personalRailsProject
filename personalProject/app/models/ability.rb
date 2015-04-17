class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :read, :all
    end
    alias_action :create, :read, :update, :destroy, to: :crud
    can :crud, Post, user_id: user.id
  end
end
