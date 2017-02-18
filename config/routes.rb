Rails.application.routes.draw do
  resources :order_statuses
  resources :groups
  resources :categories
  resources :publications
  resources :tags
  resources :ratings
  resources :notification_types
  resources :notifications
  resources :meals
  resources :order_requests
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
