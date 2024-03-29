Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end

  root to: 'tasks#index'
  get '/logins', to: 'sessions#new'
  post '/logins', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'



  resources :tasks do
    post :confirm, action: :confirm_new, on: :new
    post :import, on: :collection
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
