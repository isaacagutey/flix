class VideosController < ApplicationController
  before_action :set_video, only: [:show]
  before_action :authenticate_user, only: [:index]
 

  def index
    @videos = Video.all
    @categories = Category.all.reverse
  end

  def show
  end

  def search
    @search_videos = Video.search_by_title(params[:q])
  end

 private
  def set_video
    @video = Video.find_by slug: params[:id]
  end

end