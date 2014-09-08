Paperthincut::Application.routes.draw do
  resources :posts
  root to: "homes#show"
  resources :vendors

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

end
