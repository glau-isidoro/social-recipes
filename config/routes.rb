Rails.application.routes.draw do
  root to: "home#index"
  resources :recipes, only: [:new, :create, :show]
  resources :cuisines, only: [:new, :create]
  resources :food_types, only: [:new, :create]
end
