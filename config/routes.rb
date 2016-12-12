Rails.application.routes.draw do
  resources :search1s
  resources :search1s
  resources :search1s
  #Change the path only http://stackoverflow.com/questions/6786725/change-the-url-without-changing-the-resource-name

  resources :tr_training_employees
  resources :tr_training_records
  resources :tr_courses
  resources :tr_training_employees
  resources :stf_employees
  resources :stf_assets
  resources :tr_cells
  resources :tr_types
  resources :tr_parts
  resources :tr_programs
  resources :tr_customers
  devise_for :users

  scope "/admin" do
    resources :users
  end
  #page for navigation
  get 'lookup_tables', controller: 'home'  
  #page for reports and graphs
  get 'generate_report', controller: 'home'
  get 'hours_graph', controller: 'home'
  # get 'customers/print1'
  # resources :customers do
    # member do
      # get 'print1'
      # get 'print2'
    # end
  # end

   # send email by button click on show users form...
  # get :send_user1_email, to: 'users#send_user1_email', as: :send_user1_email

  # resources :pasenger_lists
  # resources :passengers
  # resources :jobs
  # resources :projects
  # resources :customers
  # resources :rental_records
  # resources :vehicles

  #administrate gem... 2016-06-08 David Gleba
  namespace :admin do
    resources :jobs
    resources :projects
              resources :roles
    resources :users
    #root to: "customers#index"
    root to: "roles#index"
  end

  resources :roles
  resources :users

  mount RailsAdmin::Engine => '/radmin', as: 'rails_admin'

  # for sorcery...
  # get 'login' => 'user_sessions#new', as: :login
  # post 'login' => 'user_sessions#create'
  # post 'logout' => 'user_sessions#destroy', as: :logout

  root 'home#index'
end
