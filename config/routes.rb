Rails.application.routes.draw do
  resources :groups
  resources :categories
  resources :tags
  resources :ratings
  resources :notifications
  resources :meals
  resources :order_requests
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
