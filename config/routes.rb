Rails.application.routes.draw do

  devise_for :users
  get 'cart/index'

  get 'cart/index'
  resources :items
  
  root 'static_pages#home'
  get '/help' => 'static_pages#help' 
  get '/about'=> 'static_pages#about'
  get '/products'=> 'items#index'
  

  #user login routes --------------
  get '/login' => 'user#login' 
  get '/logout' => 'user#logout'

  #user cart routes------------------
get '/cart/clear', to: 'cart#clearCart'
get '/cart/decrease/:id' => 'cart#decrease'
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id' => 'cart#remove'

  root :to => 'site#home'
  


  
  
end