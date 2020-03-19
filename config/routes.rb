Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'  
  }
  devise_scope :user do
    get 'profiles', to: 'users/registrations#new_profile'
    post 'profiles', to: 'users/registrations#create_profile'
  end

  root "users#show"
  resources :users, only: [:index]
  resources :products do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
      get 'get_size', defaults: { format: 'json' }
    end
    member do 
      get 'purchase'
      get 'confirm'
    end  
  end

  resources :cards, only: [:new, :index, :show, :destroy] do
    member do
      post 'pay', to: 'cards#pay'
    end
  end
end
