class SessionsController < ApplicationController
  before_action :redirect_back, only: [:new]

  def new
    respond_to do |format|
      format.html
      format.js { render "pages/login_signup_modal.js" }
    end
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      if user.role == "Admin"
        redirect_to admins_path
      else
        redirect_to home_path
      end
    else
      flash[:error] = "Invalid email or password"
      redirect_to :back
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_path
  end

end

 