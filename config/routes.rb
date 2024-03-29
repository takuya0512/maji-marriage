Rails.application.routes.draw do
  devise_for :users
  root to: 'seatings#index'
  resources :seatings, only: [:index, :new, :create, :show, :edit, :update, :destroy]  do
    collection do
      get 'select_pattern'
    end
  end
  resources :users, only: :show
end
