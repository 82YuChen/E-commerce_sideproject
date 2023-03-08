Rails.application.routes.draw do
  devise_for :users
  resources :stores
  resources :products

  namespace :admin do
    resources :users, only: %i[index edit update delete]
  end
  
  root 'stores#home'
end
