Rails.application.routes.draw do
 
  
  namespace :admin do
    get 'visitors/index'
  end

  namespace :admin do
    get 'visitors/destroy'
  end

 get '/login' => 'admin/sessions#new'
 get '/logout' => 'admin/sessions#destroy'
  namespace :admin do
  resources :posts
  resources :comments, only: [:index, :update, :destroy]
  resources :tags, except: [:index]
  resources :sessions, only:[:new, :create, :destroy]
  resources :moderators, only: [:index, :edit, :update]

end
end
