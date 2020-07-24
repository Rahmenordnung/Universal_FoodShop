Rails.application.routes.draw do
  
  get 'orderitems/index'
  
  get 'orderitems/show'
  
  get 'orderitems/new'
   
  get 'orderitems/edit'
  

  resources :orders do 
    resources:orderitems
  end

  resources:categories
  
  devise_for :users do 
    resources :orders 
  end
  
   
  
  
  get 'cart/index'
  resources :items
  
  get '/checkout' => 'cart#createOrder' 
  
  
  
  root 'static_pages#home'
  get '/help' => 'static_pages#help' 
  get '/about'=> 'static_pages#about'
  get '/products'=> 'items#index'
  

  #user login routes --------------
  get '/login' => 'user#login' 
  get '/logout' => 'user#logout'

  #admin login routes -------------
  # get 'admin' => 'user#login'

  #user cart routes------------------
  get '/cart/clear', to: 'cart#clearCart'
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id' => 'cart#remove'
  get '/cart/decrease/:id' => 'cart#increase'
  get '/cart/increase/:id' => 'cart#decrease'
  
  #pay routes
  get '/paid/:id' => 'static_pages#paid'
  
  
  get '/category/:title', to: 'static_pages#category'

  root :to => 'site#home'
  


  
  
end