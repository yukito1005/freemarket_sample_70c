Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'profiles', to: 'users/registrations#new_profile'
    post 'profiles', to: 'users/registrations#create_profile'
  end

  root "homes#index"
  resources :users, only: [:index]

  resources :products, only: [ :index, :new, :create, :show, :edit, :destroy, :update] do

    collection do
      get 'purchase'
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
      get 'get_size', defaults: { format: 'json' }
    end
    member do
      delete 'image_destroy', defaults: { format: 'json' }
    end
  end
end
