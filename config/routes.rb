Rails.application.routes.draw do
  root to: 'locations#index'
  devise_for :users 
  resources :locations 
  resources :items
  resources :enemies
end
