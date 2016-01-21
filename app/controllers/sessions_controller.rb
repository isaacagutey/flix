class SessionsController < ApplicationController
  before_action :redirect_back, only: [:new]

  def new
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
      render "pages/front_page"
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_path
  end

end

# User.create(email:"admin@gmail.com", password:0243530639, full_name:"admin", role:"Admin")