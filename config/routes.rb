Rails.application.routes.draw do
  devise_for :users
  root to: 'seatings#index'
  resources :seatings, only: [:inde, :new, :create, :show]  do
    collection do
      get 'select_pattern'
    end
  end
  resources :users, only: :show
end
