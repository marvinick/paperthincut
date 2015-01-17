Paperthincut::Application.routes.draw do
  root to: "goods#index"
  resources :items
  resources :baskets
  resources :posts
  resources :distributors
  resources :requests
  resources :users
  resources :inventories
  resources :goods
  resources :appointments
  resources :backouts

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end