Rails.application.routes.draw do
    
  devise_for :users
    
  get 'carts/index'



  resources :products
    
    get 'pages/about'
    get 'pages/contact'
    get 'pages/fags'
   
  

  root 'pages#home'

  
end
