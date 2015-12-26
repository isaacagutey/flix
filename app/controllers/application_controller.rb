class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by(id: session[:id]) if session[:id]
  end

  def logged_in?
    !!current_user
  end

  def authenticate_user
    unless current_user
      redirect_to root_path
      flash[:error] = "You must login first"
    end
  end

end
