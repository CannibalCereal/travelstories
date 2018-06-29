class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= Signup.find(session[:signup_id]) if session[:signup_id]
  end
  def require_user
    unless current_user
      flash[:notice] = "This page is for VIPs only."
      redirect_to '/login'
    end
  end
end
