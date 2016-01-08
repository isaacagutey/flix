class QueueItemsController < ApplicationController
  before_action :require_user, only: [:index]

  def index
    @queue_items = current_user.queue_items.order('position')
  end

  def create
    @count = count + 1
    queue = QueueItem.new(video: video, user:current_user, position: @count)
    if current_user.queued_video?(queue.video) == false && queue.save
      flash[:notice] = "#{queue.video.title} added to queue"
    else
      flash[:error] = "Error occurered whiles adding to queue"
    end
    redirect_to queue_items_path
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

  def video
    @video = Video.find_by(id:params[:video_id])
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