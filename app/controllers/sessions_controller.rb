class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = "Invalid Email or Password"
      render 'new'
    end
  end
  
  def destroy
    sign_out
    flash[:notice] = "You have been signed out"
    redirect_to root_path
  end
end
