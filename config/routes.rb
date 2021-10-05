Rails.application.routes.draw do
  devise_for :users
  root to: 'server_statuses#index'
  
  resources :server_statuses, only: [ :index, :create ]
end
