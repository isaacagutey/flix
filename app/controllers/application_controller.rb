class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  @@page = rand(1..10)
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

  def with_poster(movies)
    movies.select { |movie| movie.poster_path.present? }
  end
  

  def movie_categories
    Tmdb::Genre.movie_list.map(&:name)
  end

  def animation
    with_poster(Tmdb::Genre.movies(16, page: @@page).results)
  end

  def action
    with_poster(Tmdb::Genre.movies(28, page: @@page).results)
  end

  def adventure
    with_poster(Tmdb::Genre.movies(12, page: @@page).results)
  end

  def comedy
    with_poster(Tmdb::Genre.movies(35, page: @@page).results)
  end

  def crime
    with_poster(Tmdb::Genre.movies(80, page: @@page).results)
  end

  def documentary
    with_poster(Tmdb::Genre.movies(99, page: @@page).results)
  end

  def foreign
    with_poster(Tmdb::Genre.movies(10769, page: @@page).results)
  end

  def history
    with_poster(Tmdb::Genre.movies(36, page: @@page).results)
  end

  def horror
    with_poster(Tmdb::Genre.movies(27, page: @@page).results)
  end

  def music
    with_poster(Tmdb::Genre.movies(10402, page: @@page).results)
  end

  def mystery
    with_poster(Tmdb::Genre.movies(9648, page: @@page).results)
  end

  def romance
    with_poster(Tmdb::Genre.movies(10749, page: @@page).results)
  end

  def science_fiction
    with_poster(Tmdb::Genre.movies(878, page: @@page).results)
  end

  def tv_movie
    with_poster(Tmdb::Genre.movies(10770, page: @@page).results)
  end

  def thriller
    with_poster(Tmdb::Genre.movies(53, page: @@page).results)
  end

  def war
    with_poster(Tmdb::Genre.movies(10752, page: @@page).results)
  end

  def western
    with_poster(Tmdb::Genre.movies(37, page: @@page).results)
  end

  def drama
    with_poster(Tmdb::Genre.movies(18, page: @@page).results)
  end

  def family
    with_poster(Tmdb::Genre.movies(10751, page: @@page).results)
  end

  def fantasy
    with_poster(Tmdb::Genre.movies(14, page: @@page).results)
  end

  def set_all_genres
    @animations_id = 16
    @action_id = 28
    @adventure_id = 12
    @comedy_id = 35
    @crime_id = 80
    @documentary_id = 99
    @foreign_id = 10769
    @history_id = 36
    @horror_id = 27
    @music_id = 10402
    @mystery_id = 9648
    @romance_id = 10749
    @science_fiction_id = 878
    @tv_movie_id = 10770
    @thriller_id = 53
    @war_id = 10752
    @western_id = 37
    @drama_id = 18
    @family_id = 10751
    @fantasy_id = 14
  end

end
