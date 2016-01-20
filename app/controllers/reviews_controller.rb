class ReviewsController < ApplicationController
  before_action :set_video, only: [:create, :edit, :destroy]
  before_action :set_average_rating, only: [:create]

  def new
    @review = Review.new
  end

  def create
    @review = @video.reviews.build(review_params)
    @review.user = current_user
    if @review.save
      respond_to do |format|
        format.html { redirect_to :back }
        format.js { render :template => "videos/review.js.haml" }
      end
    else
      render :new
      # flash[:error] = "review not added"
    end
  end

  def edit
  end

  def update

  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to :back
  end

 private
  def review_params
    params.require(:review).permit!
  end

  def set_video
    @video = Video.find(params[:video_id])
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
