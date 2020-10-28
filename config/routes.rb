Rails.application.routes.draw do
  get "/" => "home#top"


  get "signup" => "users#new"
  post "users/create" => "users#create"
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  get "blogs/index/:id" => "blogs#index"
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
