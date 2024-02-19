Rails.application.routes.draw do
  # devise_for :users
  root to: 'seatings#index'
  # post 'seatings/create'
  # get 'seatings/show/:id', to: 'seatings#show', as: 'seatings'
  resources :seatings, only: [ :index, :new, :create]
end
