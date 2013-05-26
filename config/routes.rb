Bookish::Application.routes.draw do
  resources :authors


  resources :users


  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :users
  resources :sessions
  resources :books

  root to: "books#index"
end
