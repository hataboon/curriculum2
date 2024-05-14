Rails.application.routes.draw do
  resources :users
  root 'top#index'

  resources :welcomes, only: :index
  resource :login, only: [:new, :create] 
  get '/logout', to: 'logouts#show', as: 'logout'
end
