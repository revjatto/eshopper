Rails.application.routes.draw do
    
  resources :products
    resources :pages
  

  root 'pages#home'

  
end
