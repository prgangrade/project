Rails.application.routes.draw do
  
  devise_for :users
  root 'homes#index'
  get "/friend", to: "frieends#friend"
  get "/pend", to: "frieends#pending"
  get "/search", to: "homes#search"
  get '/frieends/:id', to: 'frieends#find', as: 'find'
  get '/change', to: 'frieends#change'
  resources :users do
    resources :frieends
  end
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
