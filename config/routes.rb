Rails.application.routes.draw do

  resources :swipes
  resources :messages
  resources :conversations
  resources :projects
  devise_for :accounts

  root 'home#index'
  get '/browse', to: "home#browse", as: "browse"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
