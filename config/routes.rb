Rails.application.routes.draw do
  devise_for :users
  resources :stores
  resources :products

  namespace :admin do
  end
  
  root 'stores#home'
end
