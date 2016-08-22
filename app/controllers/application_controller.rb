class ApplicationController < ActionController::Base
  before_action :loggedIN
  before_action :adminpresent
  before_action :current_user
  
  
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  protected
  def current_user
    if session[:user_id]
    @current_user = User.find(session[:user_id])
    end
  end

  def loggedIN
    @loggedin  =  User.find_by(id: session[:user_id])
    puts @loggedin
  end
  
  def permition
      unless User.find_by(id: session[:user_id])
        redirect_to login_url, notice: "Please log in"
      end
  end
  
  def adminpresent
    if @loggedin then
    @username = User.find(session[:user_id])
    if @username.name == "ADMIN" then 
     return @adminloggedin = true
    end
    end
  end
  
end
