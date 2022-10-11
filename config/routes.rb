Rails.application.routes.draw do
  root "posts#index"

  devise_for :users, :controllers => { registrations: 'users/registrations', omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :posts, :friend_requests, :friendships, :likes, :comments, :profiles
  resources :users, only: [:index, :show]

  # get '/users/:id/edit_profile', to: 'users#edit_profile'
  # post '/users/:id/edit_profile', to: 'users#update_profile'
end
