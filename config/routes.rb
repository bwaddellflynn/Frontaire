Rails.application.routes.draw do
  resources :travelguides
  resources :flights
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "flights#index"
  get "/about", to: "about#index"
  get "/profiles", to: "profiles#index"
  get "/customersupport", to: "customersupport#index"
end
