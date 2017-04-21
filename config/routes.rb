Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :profiles, only: [:new,   :edit, :create, :update]
  resources :matches,  only: [:index, :edit, :create, :update]
  resources :users,    only: [:index, :edit, :show,   :update]
end
