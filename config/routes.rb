
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'avatar', to: 'pages#avatar'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :clothes, only: [:show, :index, :new, :create] do
    member do
      resources :clothe_tags, only: [:create]
    end
  end
  resources :outfits, only: [:index, :show, :new]
  resources :tags, only: [:index, :show, :new, :create]

end
