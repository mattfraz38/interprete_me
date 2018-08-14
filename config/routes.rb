Rails.application.routes.draw do
  resources :services

  devise_for :users

  root to: 'pages#larry'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: :show
  resources :services do
    resources :appointments, only: :create
  end

  get "/my_services", to: 'user_services#index'

end
