Rails.application.routes.draw do
  devise_for :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/browse" => "browse#browse", as: :browse
  get "/myprojects" => "projects#my_projects", as: :my_projects

  root to: "public#home"

end
