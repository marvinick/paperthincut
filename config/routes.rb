Paperthincut::Application.routes.draw do
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

  get 'graph/index'
  get 'graph/data', :defaults => { :format => 'json' }
end