Rails.application.routes.draw do
  get "/login", to: 'sessions#new'
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get '/signup', to: "users#new"

  root "static_pages#home"

  get '/help', to: 'static_pages#help' 
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/login', to: 'static_pages#login'

  #  method   URL           Action  Named route          Purpose
  #  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  #  GET      /users        index   users_path           page to list all users 
  #  GET      /users/1      show    user_path(user)      page to show user
  #  GET      /users/new    new     new_user_path        page to make a new user
  #  POST     /users        create  users_path           create a new user
  #  GET      /users/1/edit edit    edit_user_path(user) page to edit user with id 1
  #  PATCH    /users/1      update  user_path(user)      update user
  #  DELETE   /users/1      destroy user_path(user)      delete user
  #  GET      /login        new     login_path           page for new session
  #  POST     /login        create  login_path           create new session
  #  DELETE   /logout       destroy logout_path          delete session (logout)

  resources :users

end
