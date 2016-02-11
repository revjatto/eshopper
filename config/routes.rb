Rails.application.routes.draw do
    
  devise_for :users
    
  get '/carts' => 'carts#index'
    
    get '/carts/clear' => 'carts#clearCart'
    get 'carts/:id' => 'carts#add'
    
    resources :products

   
    root 'pages#home'
    get 'pages/about'
    get 'pages/contact'
    get 'pages/fags'
   
  
end
