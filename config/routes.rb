Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
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

  #resources reviews, only: [:new,:create, :destroy]
  #resources chatrooms, only: [:new, :create, :show]
end
