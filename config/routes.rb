Rails.application.routes.draw do
  root to: 'homes#index'
  devise_for :users, controllers: {sessions: 'users/sessions'}
  get 'items' => 'items#index'
  get 'home' => 'homes#index'
  resources :locations do
    resources :items
  end
  resources :enemies
end
