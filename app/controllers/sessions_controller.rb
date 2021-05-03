class SessionsController < ApplicationController
 def create 
    if params[:name].nil? || params[:name].empty?
        redirect_to '/login'
      else
        session[:name] = params[:name]
        redirect_to '/'
        end
 end

 def destroy
    if session[:name] != nil 
        session.delete :name
        end 
 end

 def new
 end
end
