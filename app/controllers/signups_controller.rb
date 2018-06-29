class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end
  def create
    @signup = Signup.new(signup_params)
    if @signup.save
      session[:signup_id] = @signup.id
      redirect_to root_path
    else
      flash[:notice] = "Could not create user. Please try again."
      redirect_to '/signups/new'
    end
  end

  private
  def signup_params
    params.require(:signup).permit(:firstname, :email, :password)
  end

end
