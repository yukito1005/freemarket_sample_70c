Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'profiles', to: 'users/registrations#new_profile'
    post 'profiles', to: 'users/registratios#create_profile'
  end

  root "homes#index"
  resources :products, only: [:index,:new] do
    collection do
      get :purchase
    end
  end

end
