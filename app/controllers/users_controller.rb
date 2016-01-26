class UsersController < ApplicationController
  before_action :require_user, only: [:show, :people]

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
    @user = User.new(user_param)
    if @user.save
      session[:id] = @user.id
      redirect_to home_path
    else
      render "pages/front_page"
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