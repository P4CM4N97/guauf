Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :walkers
  get "walkers", to: "walkers#index"
  resources :walkers, only: [:index]
  resources :walkers, only: [:show, :new, :create, :edit, :update, :destroy] do
  resources :services, only: [:new, :create]
  get 'walkers/new', to: 'walkers#new', as: 'new_walker'
  end
end
