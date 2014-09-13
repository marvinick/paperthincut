Paperthincut::Application.routes.draw do
  resources :posts
  root to: "homes#show"
  resources :vendors
  resources :members
  resources :products

  get '/register', to: 'members#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

end
