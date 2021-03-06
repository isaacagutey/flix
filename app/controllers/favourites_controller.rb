class FavouritesController < ApplicationController
  before_action :set_movie, only: [:create]

  def index
    @favourites = Favourite.all
    # expires_in 5.minutes, public: true
  end

  def create
    favourite = Favourite.new(user_id: current_user.id, video_id: @movie.id)
    if current_user.favourited_video?(favourite.video_id) == false && favourite.save
      respond_to do |format|
        format.html { redirect_to :back }
        format.js { render :template => "videos/remove_favourite_button.js.haml" }
      end
    else
      flash[:error] = "Error occured whiles adding favourite"
      redirect_to :back
    end
  end

  def destroy
    favourite = Favourite.find(params[:id])
    favourite.destroy
    redirect_to :back
  end
  
  def set_movie
    @movie = Tmdb::Movie.detail(params[:video_id])
  end
end

