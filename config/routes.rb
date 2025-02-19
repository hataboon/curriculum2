Rails.application.routes.draw do
  resources :users
  resources :tasks
  root 'top#index'
  resource :login, only: %i[ new create ]
  resource :logout, only: %i[ show ]
  get '/welcomes', to: 'welcomes#index'
end

