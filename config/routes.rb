Rails.application.routes.draw do
  devise_for :users
  root to: 'serverstatuses#index'
  
  resources :serverstatuses, only: [ :index, :create ]
end
