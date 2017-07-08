Rails.application.routes.draw do
  resources :contracts
  resources :ads
  devise_for :users

  root to: 'home#index'
end
