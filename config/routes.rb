Rails.application.routes.draw do
  devise_for :users
  root to: 'seatings#index'
  resources :seatings, only: [:new, :create]  do
    collection do
      get :select_pattern # パターン選択画面
      get 'new/:pattern', to: 'seatings#new', as: :new_seating_pattern
    end
  end
end
