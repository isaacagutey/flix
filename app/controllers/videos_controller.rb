class VideosController < ApplicationController
  before_action :set_video, only: [:show, :movie_show_page]
  before_action :set_average_rating, only: [:movie_show_page, :show]
  before_action :require_user, only: [:index, :show, :search]
 
  def index
    @videos = Video.all
    @categories = Category.all.reverse
  end

  def show
    # words = @video.description.scan(/.{1,100}/)
    # @paginate = Kaminari.paginate_array(words).page(1).per(3)
    @review = Review.new

  end

  def movie_show_page
    render "videos/modals/movie_details_modal.js"
  end

  def search
    @search_videos = Video.search_by_title(params[:q])
    
  end

 private
  def set_video
    @video = Video.find(params[:id])
  end

end
