Rails.application.routes.draw do
  root "posts#index"

  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :posts, :friend_requests, :friendships
  resources :users, only: [:index, :show]
end
