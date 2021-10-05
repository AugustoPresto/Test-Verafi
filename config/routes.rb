Rails.application.routes.draw do
  devise_for :users
  root to: 'serverstatuses#show'
  
  resources :serverstatuses, only: [ :show, :create ]
end
