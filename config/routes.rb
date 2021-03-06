Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :profiles, only: [:new,   :edit, :create, :update]

  resources :matches, :destroy do
    collection do
      get 'remove_all'
    end
  end

  resources :users,    only: [:index, :edit, :show,   :update]
end
