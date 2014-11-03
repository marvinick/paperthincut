Paperthincut::Application.routes.draw do
  resources :items
  resources :baskets
  resources :posts
  resources :goods
  resources :distributors
  resources :requests
  resources :users
  root to: "requests#index"
end