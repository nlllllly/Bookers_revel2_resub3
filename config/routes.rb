Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :home, only: [:index] do
    resources :about, only: [:index]
  end
  resources :users, only: [:index]
end
