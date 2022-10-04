Rails.application.routes.draw do
  root "posts#index"

  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :posts, :friend_requests, :friendships, :likes, :comments
  resources :users, only: [:index, :show]

  # resources :users, only: [:index, :show] do
  #   resource :edit_profile, only: [:show, :update]
  # end

  get '/users/:id/edit_profile', to: 'users#edit_profile'
  post '/users/:id/edit_profile', to: 'users#update_profile'
end
