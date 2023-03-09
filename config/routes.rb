Rails.application.routes.draw do
  
  devise_for :users
  root 'homes#index'
   get "/index", to: "pendings#index"
   get "/index", to: "friends#index"
   get "/search", to: "homes#search"
  resources :users do
  resources :pendings
  end
  resources :friends
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
