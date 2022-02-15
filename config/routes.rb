
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'avatar', to: 'pages#avatar'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :clothes, only: [:show, :index, :new, :create] do
      resources :clothes_tags, only: :create
      resources :tags, only: :create
  end
  resources :outfits, only: [:index, :show, :new, :create]
  resources :tags, only: [:index, :show, :new, :create]
  resources :users, only: [:show]


end
