Rails.application.routes.draw do
  root 'dashboard#index'
  get 'dashboard', to: 'dashboard#index'

  resources :awards
  resources :types
  resources :tickets
  resources :raffles

  devise_for :users
end
