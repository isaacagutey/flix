class VideosController < ApplicationController
  before_action :set_movie, only: [:show, :movie_show_page]
  before_action :set_movie_details, only: [:show]
  before_action :get_backdrops, only: [:show]
  before_action :set_average_rating, only: [:movie_show_page, :show]
  before_action :require_user, only: [:index, :show, :search]
 
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
    @reviews = Review.where(video_id: @movie.id)
    respond_to do |format|
      format.html { render :show }
      format.js {  render "videos/modals/movie_details_modal.js" }
    end

  end

  # def movie_show_page
  #   @reviews = Review.where(video_id:211672)
  #   render "videos/modals/movie_details_modal.js"
  # end

  def search
    # @search_videos = Video.search_by_title(params[:q])
    search_videos = Tmdb::Search.new
    search_videos.resource('person') # determines type of resource
    search_videos.query('Brad Pitt') # the query to search against
    @search_videos = search_videos.fetch # makes request 
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
    @cast = Tmdb::Movie.cast(params[:id])
    @crew = Tmdb::Movie.crew(params[:id])
    @director =Tmdb::Movie.director(params[:id])
    @trailer = Tmdb::Movie.videos(params[:id])
    @similar = Tmdb::Movie.similar(params[:id])
  end

end
