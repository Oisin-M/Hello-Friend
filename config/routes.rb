Rails.application.routes.draw do
  resources :conversations
  resources :projects
  devise_for :accounts
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
