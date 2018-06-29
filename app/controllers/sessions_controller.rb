class SessionsController < ApplicationController
  def new
  end
  def create
    @signup = Signup.find_by_email(params[:session][:email])
    if @signup && @signup.authenticate(params[:session][:password])
      session[:signup_id] = @signup.id
      redirect_to '/'
    else
      flash[:notice] = "Incorrect login/password. 4 more failed attempts and this computer will explode."
      redirect_to '/login'
    end
  end
  def destroy
    session[:signup_id] = nil
    redirect_to '/login'
  end
end
