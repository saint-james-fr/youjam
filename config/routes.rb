Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  get "spotify", to: "spotify#artists"
  get "profile/:id", to: "pages#profile", as: :profile
  post "update_artist_list", to: "pages#update_artist_list", as: :update_artist_list

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

  resources :chatrooms, only: [:index, :show, :new, :create] do
    resources :messages, only: :create
  end

end
