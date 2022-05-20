Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { sessions: 'users/sessions' }
  get '/dashboard', to: 'dashboard#index'
  
  devise_scope :user do
  get '/user/:id', to: 'users/sessions#show'
end

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
