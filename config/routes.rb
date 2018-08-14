Rails.application.routes.draw do
  resources :services
  # get 'services/index'
  # get 'services/show'
  # get 'services/new'
  # get 'services/create'
  # get 'services/edit'
  # get 'services/update'
  # get 'services/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: :show
  resources :services do
    resources :appointments, only: :create
  end

  get "/my_services", to: 'user_services#index'

end
