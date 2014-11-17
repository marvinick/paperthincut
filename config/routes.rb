Paperthincut::Application.routes.draw do
  resources :items
  resources :baskets
  resources :posts
  resources :goods
  resources :distributors
  resources :requests
  resources :users, defaults: { format: 'json' }
  resources :inventories
  root to: "goods#index"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end