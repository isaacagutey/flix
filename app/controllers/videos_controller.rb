class VideosController < ApplicationController
  before_action :set_video, only: [:show]
  before_action :require_user, only: [:index, :show, :search]
 
  def index
    @videos = Video.all
    @categories = Category.all.reverse
    @animations_2d = Category.where(name:"2D Animations").first
    @animations_3d = Category.where(name:"3D Animations").first

  end

  def show
    # words = @video.description.scan(/.{1,100}/)
    # @paginate = Kaminari.paginate_array(words).page(1).per(3)
     @review = Review.new
  end

  def search
    @search_videos = Video.search_by_title(params[:q])
  end

 private
  def set_video
    @video = Video.find_by slug: params[:id]
  end

end