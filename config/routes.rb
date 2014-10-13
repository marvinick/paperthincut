Paperthincut::Application.routes.draw do
  resources :line_items

  resources :posts
  root to: "homes#show"
  resources :vendors
  resources :products
  resources :members
  resources :orders

  get '/register', to: 'members#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

end
