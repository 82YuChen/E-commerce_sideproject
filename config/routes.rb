Rails.application.routes.draw do
  devise_for :users
  resources :stores

  namespace :admin do
    resources :users, only: %i[index edit update delete]
    resources :products
  end
  
  root 'stores#home'
end
