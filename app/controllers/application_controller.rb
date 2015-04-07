class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def current_user
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end


  private

  def confirm_logged_in
    unless cookies[:auth_token] && session[:user_id]
      flash[:notice] = "Please login."
      redirect_to(:controller => 'access', :action => 'login')
      return false # halts the before_action
      # stops everything from going
    else
      return true
    end
  end

end
