Rails.application.routes.draw do
  
  devise_for :users
  root 'homes#index'
   get "/index", to: "pendings#index"
   get "/findex", to: "frieends#index"
   get "/search", to: "homes#search"
   get "/find", to: "frieends#find"

  resources :users do
    resources :pendings
    resources :frieends
  end
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
