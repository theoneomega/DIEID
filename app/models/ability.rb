class Ability
  include CanCan::Ability

  def initialize(user)
    
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    @user = User.find_by_id(user.id)
    unless @user.blank?
      if @user.role.super_admin == true
        can :manage, :all
        cannot [:destroy, :edit], Fullevent
      elsif @user.role.analyst == true
        can [:index, :edit], Event, :analyst_id => @user.analyst_id
      elsif @user.role.supervisor == true
        can [:read, :update, :destroy, :create], Event
        can :index, Fullevent
      elsif @user.role.medios == true
#        can :read, Event, :analyst_id => @user.analyst_id
        can [:read, :create, :update], Event, :analyst_id => @user.analyst_id
        can [:index, :read], Fullevent
      end

    end
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
