Rails.application.routes.draw do
 

  namespace :admin do
    get 'settings/new'
  end

  namespace :admin do
    get 'settings/create'
  end

  namespace :admin do
    get 'settings/edit'
  end

  namespace :admin do
    get 'settings/update'
  end

 get '/login' => 'admin/sessions#new'
 get '/logout' => 'admin/sessions#destroy'
  namespace :admin do
  resources :posts
  resources :dashboard, only: [:index]
  resources :notifications, only: [:index, :destroy]
  resources :messages, only: [:index, :show, :update, :destroy]
  resources :visitors, only: [:index, :update, :destroy]
  resources :comments, only: [:index, :update, :destroy]
  resources :tags, except: [:index]
  resources :sessions, only:[:new, :create, :destroy]
  resources :moderators, only: [:index, :edit, :update]

end

match 'dismiss_all_notifications', to: 'admin/notifications#delete_all', via: :delete

end
