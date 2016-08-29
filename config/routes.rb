Rails.application.routes.draw do
 
  namespace :admin do
    get 'tags/new'
  end

  namespace :admin do
    get 'tags/create'
  end

  namespace :admin do
    get 'tags/edit'
  end

  namespace :admin do
    get 'tags/update'
  end

  namespace :admin do
    get 'tags/show'
  end

  namespace :admin do
    get 'tags/destroy'
  end

 get '/login' => 'admin/sessions#new'
 get '/logout' => 'admin/sessions#destroy'
  namespace :admin do
  resources :posts
  resources :sessions, only:[:new, :create, :destroy]
  resources :moderators, only: [:index, :edit, :update]

end
end
