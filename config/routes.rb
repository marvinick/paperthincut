Paperthincut::Application.routes.draw do
  resources :items

  resources :baskets

  root to: "posts#index"
  resources :posts
  resources :goods
  resources :distributors
end
