Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/sign_in', to: 'devise/sessions#new'

  resources :users do
    collection do
      get   :change_password
      patch :update_password
    end
  end

  resources :roles, only: [:index]
  resources :todos

  root to: 'home#index'
end
