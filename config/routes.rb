Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "homes#index"
  resources :products, only: [:index,:new, :show, :edit, :destroy] do
    collection do
      get :purchase
    end
  end

end
