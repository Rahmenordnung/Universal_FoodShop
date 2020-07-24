class UserController < ApplicationController
    
    def login
        #before_action :authenticate_user!
        session[:login] = 1
        session[:cart] = nil
        flash[:notice] = "Successfully logged in."
        redirect_to :controller => :items
    end 
    
    def logout
        session[:login] = nil
        session[:cart] = nil
        flash[:notice] = "Successfully logged out."
        redirect_to :controller => :items
    end    

    
end
