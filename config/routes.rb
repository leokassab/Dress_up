
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD

=======
  get 'avatar', to: 'pages#avatar'
>>>>>>> 7a1e5fb848f79e6a555c2b23a2adb0b030da60be

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :clothes, only: [:show, :index, :new, :create] do
    member do
      resources :clothe_tags, only: [:create]
    end
  end
  resources :outfits, only: [:index, :show, :new]
  resources :tags, only: [:index, :show, :new, :create]

end
