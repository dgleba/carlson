class Ability
  include CanCan::Ability

  def initialize(user)

    if user.sc_admin?
      can :manage, :all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard
      can :history
      
    # remember to add roles to user.rb
    #
    # http://hibbard.eu/authentication-with-devise-and-cancancan-in-rails-4-2/  
    elsif user.sc_seller?
      # can :read, Customer
      # can :create, Customer
      # can :update, Customer do |customer|
        # Customer.try(:user) == user
      # end
      # can :destroy, Customer do |customer|
        # Customer.try(:user) == user
      # end
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard


    elsif user.sc_regular?
      # can :read, [ Vehicle, RentalRecord, Passenger]
      # can :create, [ Customer,Vehicle, RentalRecord, Passenger]
      # can :update, [  RentalRecord,  Passenger]
      
      can :manage, [ TrTrainingRecord, TrTrainingEmployee ]
      #
      cannot :destroy,  [ TrTrainingRecord, TrTrainingEmployee ]
      can :read, :all
      
     elsif user.sc_supervisor?
      can :manage, :all
      cannot :destroy,  [ TrTrainingRecord, TrTrainingEmployee ]
      cannot :destroy, [StfEmployee, StfAsset, User, Role]
      cannot :create, [StfEmployee, StfAsset, User, Role]
      cannot :update, [StfEmployee, StfAsset, User, Role]
      cannot :update, [Search1]
      cannot :destroy, [Search1]
      #
      #


      # no luck.. NoMethodError in CustomersController#index undefined method `ransack' for nil:NilClass
      # can :read, Customer do |c|
        # Customer.try(:user) == user
      # end
      
    elsif user.sc_readonly?
      # can :read, Vehicle

    elsif user.sc_minimal?
      #can :read, [Role]
    
    elsif user.sc_create?
      can :read, [Role]
    end

  end
  
# sc_minimal  
# sc_readonly  
# sc_create
# sc_regular
# sc_supervisor
# sc_delete
# sc_admin
  
end

