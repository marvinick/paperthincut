Paperthincut::Application.routes.draw do
  root to: "posts#index"
  resources :posts
  resources :goods
end
