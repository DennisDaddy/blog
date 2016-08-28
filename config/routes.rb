Rails.application.routes.draw do
  namespace :admin do
    get 'sessions/new'
  end

  namespace :admin do
    get 'sessions/create'
  end

  namespace :admin do
    get 'sessions/destroy'
  end

  namespace :admin do

  resources :moderators, only: [:index, :edit, :update]

end
end
