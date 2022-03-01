Rails.application.routes.draw do
  resources :reviews
  resources :movies
  get 'sessions/new'
  get 'users/new'
  get 'users/show'
  get 'static/home'
  root 'static#home'

  resources :users
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'

  get 		'/login', 		to: 'sessions#new'
  post 		'/login', 		to: 'sessions#create'
  delete 	'/logout', 		to: 'sessions#destroy'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
