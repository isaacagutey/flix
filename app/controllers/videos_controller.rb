class VideosController < ApplicationController
  before_action :set_movie, only: [:show, :movie_show_page]
  before_action :set_movie_details, only: [:show]
  before_action :get_backdrops, only: [:show, :movie_show_page]
  before_action :set_average_rating, only: [:movie_show_page, :show]
  before_action :require_user, only: [:index, :show, :search]
  before_action :set_similar_movies, only: [:show]
  before_action :set_all_genres, only: [:index]
 
  def index
    @animations = animation
    @action = action
    @adventure = adventure
    @comedy = comedy
    @crime = crime
    @documentary = documentary
    @foreign = foreign
    @history = history
    @horror = horror
    @music = music
    @mystery = mystery
    @romance = romance
    @science_fiction = science_fiction
    @tv_movie = tv_movie
    @thriller = thriller
    @war = war
    @western = western
    @drama = drama
    @family = family
    @fantasy = fantasy

  end

  def show
    # words = @video.description.scan(/.{1,100}/)
    # @paginate = Kaminari.paginate_array(words).page(1).per(3)
    @review = Review.new
    reviews = Review.where(video_id: @movie.id)
    @reviews = reviews.select { |review| !review.review.nil? }
    # binding.pry
    respond_to do |format|
      format.html { render :show }
      format.js {  render "videos/modals/movie_details_modal.js" }
    end

  end

  def genre_show
    # pages = Tmdb::Genre.movies("#{params[:id]}").total_pages
    # total_results = []
    # binding.pry
    # (1..10).each do |page_number|
    #   total_results << Tmdb::Genre.movies("#{params[:id]}", page: page_number).results
    #   # total_results << HTTParty.get("https://api.themoviedb.org/3/genre/16/movies?api_key=b5bbd6c363545bc9f1c48c7f3195372f&page=#{page_number}")["results"]
    # end
    # @genre = Kaminari.paginate_array(total_results.flatten).page(params[:page]).per(12)
    # # @genre = Tmdb::Genre.movies("#{params[:id]}", page:10)
    pages ||= Tmdb::Genre.movies("#{params[:id]}").total_pages
    @title = params[:genre]
    @id = params[:id]
    if params[:page].present? 
      if params[:page].to_i < pages
        @genre = Tmdb::Genre.movies("#{params[:id]}", page: params[:page]).results.select{ |movie| movie.poster_path.present? }.flatten
        render 'videos/genre.js'
      else
        # do something
      end
    else
      @genre = Tmdb::Genre.movies("#{params[:id]}").results.select{ |movie| movie.poster_path.present? }.flatten
      render 'videos/genre'
    end
 
  end

  # def movie_show_page
  #   @review = Review.new
  #   reviews = Review.where(video_id: @movie.id)
  #   @reviews = reviews.select { |review| !review.review.nil? }
  #   render "videos/modals/movie_details_modal.js"
  # end

  def search
    # @search_videos = Video.search_by_title(params[:q])
    # search_videos = Tmdb::Search.new
    # search_videos.resource('person') # determines type of resource
    # search_videos.query('Brad Pitt') # the query to search against
    # @search_videos = search_videos.fetch # makes request 

    @company = Tmdb::Search.company(params[:q]).results
    @collection = Tmdb::Search.collection(params[:q]).results
    @keyword = Tmdb::Search.keyword(params[:q]).results
    @list = Tmdb::Search.list(params[:q]).results
    @movie = Tmdb::Search.movie(params[:q]).results
    @multi = Tmdb::Search.multi(params[:q]).results
    @person = Tmdb::Search.person(params[:q]).results
    @tv = Tmdb::Search.tv(params[:q]).results


    # binding.pry

  end

private

  def set_movie
    @movie = Tmdb::Movie.detail(params[:id])
    # @video = Video.find(params[:id])
  end

  def get_backdrops 
    # @backdrops = Tmdb::Movie.backdrops(params[:id])
    # @result = Resource.new("/movie/#{params[:id]}/images", filters).get
    backdrop_path = []
    @response = HTTParty.get("https://api.themoviedb.org/3/movie/#{params[:id]}/images?api_key=b5bbd6c363545bc9f1c48c7f3195372f")["backdrops"]
    @response.each do |backdrop|
      backdrop_path << backdrop["file_path"]
    end
    @backdrops = backdrop_path.first(10)

  end

  def set_movie_details 
    @cast = Tmdb::Movie.cast(params[:id]).select{ |cast| cast.profile_path.present? }
    @crew = Tmdb::Movie.crew(params[:id])
    @director =Tmdb::Movie.director(params[:id])
    @trailer1 = Tmdb::Movie.videos(params[:id]).first.key  if Tmdb::Movie.videos(params[:id]).present?
    @trailer2 = Tmdb::Movie.videos(params[:id])[1].key if Tmdb::Movie.videos(params[:id])[1].present?
    @similar = Tmdb::Movie.similar(params[:id]).results
    # binding.pry
  end

  def set_similar_movies
    genre_id = Tmdb::Movie.detail(params[:id]).genres.first.id
    @similar_genre_movies = with_poster(Tmdb::Genre.movies(genre_id).results)
    # binding.pry
  end

end
