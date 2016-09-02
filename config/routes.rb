Rails.application.routes.draw do
 
  namespace :admin do
    get 'messages/index'
  end

  namespace :admin do
    get 'messages/show'
  end

  namespace :admin do
    get 'messages/update'
  end

  namespace :admin do
    get 'messages/destroy'
  end

 get '/login' => 'admin/sessions#new'
 get '/logout' => 'admin/sessions#destroy'
  namespace :admin do
  resources :posts
  resources :visitors, only: [:index, :update, :destroy]
  resources :comments, only: [:index, :update, :destroy]
  resources :tags, except: [:index]
  resources :sessions, only:[:new, :create, :destroy]
  resources :moderators, only: [:index, :edit, :update]

end
end
