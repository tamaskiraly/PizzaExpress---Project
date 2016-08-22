class SessionsController < ApplicationController
  
  
 def new
 end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.name == "ADMIN" then 
        redirect_to admin_url 
      else
        redirect_to regular_user_url
      end

    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:cart_id] = nil
    redirect_to store_url, notice: "Logged out"
  end
  
  
  
end