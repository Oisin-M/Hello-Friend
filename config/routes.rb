Rails.application.routes.draw do

  resources :projects
  devise_for :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/browse" => "browse#browse", as: :browse

  root to: "public#home"

  post "/approve/:id" => "browse#approve", as: :approve_profile
  post "/decline/:id" => "browse#decline", as: :decline_profile

  post "/get_conversation/:ids" => "browse#open_conversation", as: :open_conversation

end
