require 'sidekiq/web'
require 'sidekiq-scheduler/web'

Rails.application.routes.draw do

  devise_for :users, skip: 'registrations', controllers: { users: 'users', registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/sign_in', to: 'devise/sessions#new'

  mount Sidekiq::Web => '/sidekiq'

  resources :users do
    collection do
      get   :change_password
      patch :update_password
    end
  end

  root to: 'home#index'
end
