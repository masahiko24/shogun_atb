Rails.application.routes.draw do
  devise_for :users
  root to: 'photos#index'
  resources :photos do
    resources :comments, only: [:create, :destroy]
    resources :favarites, only: [:create, :destroy]
  end

  resources :users, only: [:index, :show]

end

