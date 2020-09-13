Rails.application.routes.draw do

  resources :profiles, except: [:index, :destroy, :new]
  resources :swipes, except: [:index, :update, :destroy]
  resources :messages, except: [:index, :update, :destroy]
  resources :projects, except: [:index,:new]
  devise_for :accounts

  root 'home#index'
  get '/browse', to: "home#browse", as: "browse"

  get 'new_project' => "projects#new_project", as: "new"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
