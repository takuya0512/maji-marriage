Rails.application.routes.draw do
  # devise_for :users
  root to: 'seatings#index'
  resources :seatings, only: [:new, :create, :edit, :update, :destroy]  do
    collection do
      get :select_pattern # パターン選択画面
      get 'new/:pattern', to: 'seatings#new', as: :new_seating
      # post :start_seating_creation
    end
    # member do
    #   get :edit_guest, path: 'edit_guest/:id' # ゲスト情報編集画面
    #   patch :update_guest, path: 'update_guest/:id' # ゲスト情報更新
    # end
  end

end
