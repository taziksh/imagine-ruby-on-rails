Rails.application.routes.draw do
  root to: 'image#index'
  get 'image/index' #'images', to: 'image#index' as: 'images'
  get 'image/show'
  get 'image/new'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users
  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
