Paperthincut::Application.routes.draw do
  resources :posts
  root to: "homes#show"
  resources :vendors


end
