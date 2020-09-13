Rails.application.routes.draw do

  resources :profiles, except: [:index, :destroy, :new]
  resources :swipes, except: [:index, :update, :new, :edit, :destroy]
  resources :messages, except: [:index, :show, :update, :new, :edit, :destroy]
  resources :projects, except: [:index, :new, :destroy]
  devise_for :accounts

  root 'home#index'
  get '/browse', to: "home#browse", as: "browse"

  get 'new_project' => "projects#new_project", as: "new"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
