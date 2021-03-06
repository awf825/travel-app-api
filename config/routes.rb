# frozen_string_literal: true

Rails.application.routes.draw do
  resources :highlights
  resources :nations
  resources :users
  # RESTful routes
  resources :examples, except: %i[new edit]
  # Custom routes
  get '/mynations' => 'nations#index_owned'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
