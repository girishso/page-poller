Rails.application.routes.draw do
  resources :logs

  resources :notifications

  resources :scrapers

  mount Upmin::Engine => '/karyakarta'

  resources :users
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
