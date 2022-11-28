Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"

  resources :jams, except: :destroy do
    resources :bookings, only: [:new, :create, :edit, :update, :cancel]
    resources :posts, except: [:show, :index]
  end

  resources :posts, only: :destroy

  #resources reviews, only: [:new,:create, :destroy]
  #resources chatrooms, only: [:new, :create, :show]
end
