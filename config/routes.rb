Rails.application.routes.draw do
  root 'dashboard#index'
  get 'dashboard', to: 'dashboard#index'

  get "tickets/purchase/:id", to: "tickets#purchase"

  resources :awards
  resources :types
  resources :tickets
  resources :raffles

  devise_for :users
end
