Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :services

  resources :bookings, only: [:index, :new, :create, :destroy]
  get '/dashboard', to: 'bookings#dashboard'
  get '/users', to: 'pages#user_index'
  get '/user/:id', to: 'pages#user_show', as: :user
  get '/user/:id/edit', to: 'pages#user_edit', as: :edit_user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
