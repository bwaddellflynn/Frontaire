Rails.application.routes.draw do
  get '/search', to: 'search#index'
  resources :admin_contents
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :travelguides
  resources :flights
  resources :admincontent

  get 'flights/add_to_cart/:id', to: 'flights#add_to_cart', as: 'add_to_cart'
  get 'flights/remove_from_cart/:id', to: 'flights#remove_from_cart', as: 'remove_from_cart'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "flights#index"
  get "/about", to: "admin_contents#index"
  get "/profiles", to: "profiles#index"
  get "/customersupport", to: "customersupport#index"
end
