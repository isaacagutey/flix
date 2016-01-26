class QueueItemsController < ApplicationController
  before_action :require_user, only: [:index]

  def index
    @queue_items = current_user.queue_items.order('position')
  end

  def create
    @count = count + 1
    queue = QueueItem.new(video_id: movie.id, user:current_user, position: @count)
    if current_user.queued_video?(queue.video_id) == false && queue.save
      respond_to do |format|
        format.html { redirect_to :back }
        format.js { render :template => "videos/remove_queue_button.js.haml"}
      end
    else
      flash[:error] = "Error occurered whiles adding to queue"
      redirect_to :back
    end
  end

  def update
    begin
      update_queue_items
      current_user.normalize_queue_items_positions
    rescue ActiveRecord::RecordInvalid
      flash[:error] = "Invalid input update unsuccessfull"
    end
    redirect_to :back
  end

  def destroy
    queue_item = QueueItem.find(params[:id])
    queue_item.destroy
    current_user.normalize_queue_items_positions
    redirect_to :back
  end

private
  def count
    current_user.queue_items.size
  end

  def movie
    @movie = Tmdb::Movie.detail(params[:video_id])
  end

  def update_queue_items
      ActiveRecord::Base.transaction do
      params[:queue_items].each do |queue_item|
      item = QueueItem.find_by(id: queue_item["id"])
      item.update_attributes!(position: queue_item["position"], rating: queue_item["rating"]) if item.user = current_user   
    end
   end
  end

end