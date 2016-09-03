Rails.application.routes.draw do
 

 get '/login' => 'admin/sessions#new'
 get '/logout' => 'admin/sessions#destroy'
  namespace :admin do
  resources :posts
  resources :settings, only: [:new, :create, :edit, :update]
  resources :dashboard, only: [:index]
  resources :notifications, only: [:index, :destroy]
  resources :messages, only: [:index, :show, :update, :destroy]
  resources :visitors, only: [:index, :update, :destroy]
  resources :comments, only: [:index, :update, :destroy]
  resources :tags, except: [:index]
  resources :sessions, only:[:new, :create, :destroy]
  resources :moderators, only: [:index, :edit, :update]

end

resources :posts

match 'dismiss_all_notifications', to: 'admin/notifications#delete_all', via: :delete

end
