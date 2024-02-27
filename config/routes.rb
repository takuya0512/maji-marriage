Rails.application.routes.draw do
  devise_for :users
  root to: 'seatings#index'
  resources :seatings, only: [:new, :create]  do
    collection do
      get 'select_pattern'
    end
  end
end
