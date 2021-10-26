Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "employees/:id" => "employees#show"
  get "employees" => "employees#index"
  post "employees" => "employees#create"
  patch "employees/:id" => "employees#update"
  delete "employees/:id" => "employees#destroy"

  get "departments/:id" => "departments#show"
  get "departments" => "departments#index"
  post "departments" => "departments#create"
  patch "departments/:id" => "departments#update"
  delete "departments/:id" => "departments#destroy"

  post "users" => "users#create"

  post "sessions" => "sessions#create"
end
