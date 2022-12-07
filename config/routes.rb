Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'cart/show'
  resources :products
  get '/search', to: 'search#index'
  resources :admin_contents
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :travelguides
  resources :products
  resources :admincontent

  get 'products/add_to_cart/:id', to: 'products#add_to_cart', as: 'add_to_cart'
  get 'products/remove_from_cart/:id', to: 'products#remove_from_cart', as: 'remove_from_cart'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "products#index"
  get "/about", to: "admin_contents#index"
  get "/profiles", to: "profiles#index"
  get "/customersupport", to: "customersupport#index"
end
