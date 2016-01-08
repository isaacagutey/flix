class SessionsController < ApplicationController
  before_action :redirect_back, only: [:new]

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect_to home_path
    else
      flash[:error] = "Invalid email or password"
      render "pages/front_page"
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_path
  end

end