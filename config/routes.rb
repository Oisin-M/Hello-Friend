Rails.application.routes.draw do

  resources :profiles
  resources :swipes
  resources :messages
  resources :projects
  devise_for :accounts

  root 'home#index'
  get '/browse', to: "home#browse", as: "browse"

  get 'new_project' => "projects#new_project", as: "new"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
