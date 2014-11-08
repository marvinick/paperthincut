Paperthincut::Application.routes.draw do
  resources :items
  resources :baskets
  resources :posts
  resources :goods
  resources :distributors
  resources :requests
  resources :users
  resources :inventories
  root to: "requests#index"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end