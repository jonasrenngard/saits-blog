Rails.application.routes.draw do

  namespace :admin do
    resources :users
resources :comments
resources :posts

    root to: "users#index"
  end

  devise_for :users
  resources :posts do
    resources :comments, only: [:create]
  end
  resources :users
  root to: "home#index"
  # root to: "devise#registration#new"
end
