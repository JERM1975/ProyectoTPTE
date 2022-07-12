Rails.application.routes.draw do
  #get 'productos/index'
  #get 'productos/new'
  #get 'productos/create'
  #get 'productos/show'

  resources :contactos
  resources :productos
  
  #get 'contactos/index'
  #get 'contactos/new'
  #get 'contactos/create'
  #get 'contactos/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
