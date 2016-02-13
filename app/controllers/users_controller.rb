class UsersController < ApplicationController
  before_action :require_user, only: [:show, :people]
  before_action :set_all_genres, only: [:create]

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @queued_videos = @user.queued_videos
    @all_reviews = @user.reviews
    @reviews = @all_reviews.page(params[:page]).per(12)
  end

  def create
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
    @user = User.new(user_param)
    if @user.save
      session[:id] = @user.id
      redirect_to home_path
    else
      render "videos/index"
    end
  end

  def people
    @relationships = current_user.following_relationships
  end

  private

  def user_param
    params.require(:user).permit!
  end

end