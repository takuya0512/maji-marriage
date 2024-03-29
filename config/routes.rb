Rails.application.routes.draw do
  devise_for :users
  root to: 'seatings#index'
  resources :seatings, only: %i[index new create show edit update] do
    collection do
      get 'select_pattern'
    end
  end
  resources :users, only: :show
end
