Rails.application.routes.draw do
  resources :groups
  resources :categories
  resources :tags
  resources :ratings
  resources :notifications
  resources :meals
  resources :order_requests
  resources :users
  put 'users/add_to_group/:group_id', to: 'users#add_to_group'
  put 'groups/add_member/:group_id', to: 'groups#add_member'
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
