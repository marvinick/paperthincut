Paperthincut::Application.routes.draw do
  resources :posts
  root to: "homes#show"


end
