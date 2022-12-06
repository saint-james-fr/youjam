Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  get "spotify", to: "pages#spotify"
  get "profile/:id", to: "pages#profile", as: :profile

  resources :jams, except: :destroy do
    resources :bookings, only: [:new, :create] do
      member do
      patch :accepted
      patch :declined
      patch :canceled
    end
    end
    resources :posts, except: [:show, :index]
  end

  resources :posts, only: :destroy

  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end

  #resources reviews, only: [:new,:create, :destroy]
end
