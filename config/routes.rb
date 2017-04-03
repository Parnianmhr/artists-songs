Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :artists do
    resources :songs, only: [:create, :destroy, :index]
  end

  resources :photos

  namespace :api do
    resources :songs, only: [:create, :update, :destroy, :index]
  end
end
