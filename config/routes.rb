Rails.application.routes.draw do
  resources :admin_contents
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :travelguides
  resources :flights
  resources :admincontent
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "flights#index"
  get "/about", to: "admin_contents#index"
  get "/profiles", to: "profiles#index"
  get "/customersupport", to: "customersupport#index"
end
