class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    if session[:name]
      render :hello
    else
      redirect_to login_path
    end
  end

  def current_user
    session[:name]
  end
  

end
