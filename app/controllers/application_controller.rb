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
    reviews = Review.where(video_id:@movie.id)
    reviews.pluck(:rating)
  end

  def set_average_rating
    @one_star = (( rating_array.count(1).to_f / rating_array.size.to_f ).to_f * 100).round(2).nan? ? 0 : (( rating_array.count(1).to_f / rating_array.size.to_f ).to_f * 100).round(2)
    @two_star = (( rating_array.count(2).to_f / rating_array.size ).to_f * 100).round(2).nan? ? 0 : (( rating_array.count(2).to_f / rating_array.size ).to_f * 100).round(2)
    @three_star = (( rating_array.count(3).to_f / rating_array.size ).to_f * 100).round(2).nan? ? 0 : (( rating_array.count(3).to_f / rating_array.size ).to_f * 100).round(2)
    @four_star = (( rating_array.count(4).to_f / rating_array.size ).to_f * 100).round(2).nan? ? 0 : (( rating_array.count(4).to_f / rating_array.size ).to_f * 100).round(2)
    @five_star = (( rating_array.count(5).to_f / rating_array.size ).to_f * 100).round(2).nan? ? 0 : (( rating_array.count(5).to_f / rating_array.size ).to_f * 100).round(2)
  end

  def movie_categories
    Tmdb::Genre.movie_list.map(&:name)
  end

  def animation
    Tmdb::Genre.movies(16, page:1).results
  end

  def action
    Tmdb::Genre.movies(28, page:1).results
  end

  def adventure
    Tmdb::Genre.movies(12, page:1).results
  end

  def comedy
    Tmdb::Genre.movies(35, page:1).results
  end

  def crime
    Tmdb::Genre.movies(80, page:1).results
  end

  def documentary
    Tmdb::Genre.movies(99, page:1).results
  end

  def foreign
    Tmdb::Genre.movies(10769, page:1).results
  end

  def history
    Tmdb::Genre.movies(36, page:1).results
  end

  def horror
    Tmdb::Genre.movies(28, page:1).results
  end

  def music
    Tmdb::Genre.movies(10402, page:1).results
  end

  def mystery
    Tmdb::Genre.movies(9648, page:1).results
  end

  def romance
    Tmdb::Genre.movies(10749, page:1).results
  end

  def science_fiction
    Tmdb::Genre.movies(878, page:1).results
  end

  def tv_movie
    Tmdb::Genre.movies(10770, page:1).results
  end

  def thriller
    Tmdb::Genre.movies(53, page:1).results
  end

  def war
    Tmdb::Genre.movies(10752, page:1).results
  end

  def western
    Tmdb::Genre.movies(37, page:1).results
  end

  def drama
    Tmdb::Genre.movies(18, page:1).results
  end

  def family
    Tmdb::Genre.movies(10751, page:1).results
  end

  def fantasy
    Tmdb::Genre.movies(14, page:1).results
  end


end
