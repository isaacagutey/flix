class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by(id: session[:id]) if session[:id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    unless current_user
      redirect_to root_path
      flash[:error] = "You must login first"
    end
  end

  def redirect_back
    redirect_to home_path if logged_in?
  end

  private

  def rating_array
    set_video.all_ratings
  end

   def set_average_rating
    @one_star = (( rating_array.count(1).to_f / rating_array.size.to_f ).to_f * 100).round(2)
    @two_star = (( rating_array.count(2).to_f / rating_array.size ).to_f * 100).round(2)
    @three_star = (( rating_array.count(3).to_f / rating_array.size ).to_f * 100).round(2)
    @four_star = (( rating_array.count(4).to_f / rating_array.size ).to_f * 100).round(2)
    @five_star = (( rating_array.count(5).to_f / rating_array.size ).to_f * 100).round(2)
  end



end
