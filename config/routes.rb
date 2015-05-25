Paperthincut::Application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :suckers do
    root to: "suckers/sessions#new"
  end
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
  resources :backouts do
    resources :responds, only: [:create]
  end
  resources :logs
  resources :calendars
  resources :tips
  resources :rolls

  get 'graph/index'
  get 'graph/data', :defaults => { :format => 'json' }
end