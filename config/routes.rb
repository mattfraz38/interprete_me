Rails.application.routes.draw do
  resources :services

  devise_for :users
<<<<<<< HEAD
=======

>>>>>>> 4460d6e1e8caefb6937fe30a89c25155bafb8f7c
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: :show
  resources :services do
    resources :appointments, only: :create
  end

  get "/my_services", to: 'user_services#index'

end
