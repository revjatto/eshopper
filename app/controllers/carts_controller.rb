class CartsController < ApplicationController
    
    def add
        id = params[:id]
        
        #if the cart is already created use the exisiting cart else create a new cart
        
        if session[:cart] then
            cart = session[:cart]
        else
            session[:cart] = {}
            cart = session[:cart]
        end
            # if the item is already added to the cart, increment the value else set a new value
            
            if cart[id] then
                cart[id] = cart[id] + 1
                
            else
                cart[id] = 1
                
        end
                redirect_to :action => :index
            end #end add method
            
            def clearCart
                session[:cart] = nil
                redirect_to :action => :index
            end
    
        def index
            #if there is a cart, pass it to the page for display else pass an empty page
      
      if session[:cart] then
          @cart = session[:cart]
          
      else
          
          @cart = {}
      end     
  end
end
