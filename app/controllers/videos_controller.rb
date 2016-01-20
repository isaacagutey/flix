class VideosController < ApplicationController
  before_action :set_video, only: [:show, :movie_show_page]
  before_action :set_average_rating, only: [:movie_show_page]
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
