
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'avatar', to: 'pages#avatar'
  # get 'filter_avatar', to: 'pages#filter_avatar'
  get 'filter', to: 'clothes#filter'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :clothes, only: [:show, :index, :new, :create, :edit, :update, :delete] do
      resources :clothes_tags, only: :create
      resources :tags, only: :create
      member do
        patch :favorite
      end
  end
  resources :outfits, only: [:index, :show, :new, :create]
  resources :tags, only: [:index, :show, :new, :create]
  resources :users, only: [:show]
  resources :shops
end
