Rails.application.routes.draw do
  scope "checkout" do
    post "create",  to: "checkout#create",  as: "checkout_create"
    get "success",  to: "checkout#success", as: "checkout_success"
    get "cancel",   to: "checkout#cancel",  as: "checkout_cancel"
  end
  devise_for :users
  resources :products
  resources :cart, only: %i[create destroy]
  get '/search', to: 'search#index'
  resources :admin_contents
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :travelguides
  resources :admincontent

  # Defines the root path route ("/")
  root to: "products#index"
  get "/about", to: "admin_contents#index"
  get "/profiles", to: "profiles#index"
  get "/customersupport", to: "customersupport#index"
end
