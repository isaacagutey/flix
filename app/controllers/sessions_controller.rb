class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      flash[:notice] = "You successfully logged in"
      redirect_to home_path
    else
      render :new
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_path
  end

end