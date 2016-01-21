class AdminsController < ApplicationController
  before_action :verify_admin

  def index
    @users = User.all
  end


  private

  def verify_admin
    unless current_user.role == "Admin"
      redirect_to home_path
      flash[:error] = "You need adminstrative privileges to access this page"
    end
  end

end