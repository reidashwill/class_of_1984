Rails.application.routes.draw do
  root to: 'locations#index'
  devise_for :users 
  resources :locations do
    resources :items
  end
  resources :enemies
end
