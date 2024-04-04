Rails.application.routes.draw do
  devise_for :users
  root to: 'seatings#index'
  resources :seatings do
    collection do
      get 'select_pattern'
    end
  end
  resources :users, only: :show
end