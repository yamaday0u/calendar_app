Rails.application.routes.draw do
  get "/" => "home#top"

  get "blogs/index"

  get "users/new" => "users#new"
  get "users/create" => "users#create"
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
