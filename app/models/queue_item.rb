class QueueItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :video
  validates_numericality_of :position, {only_integer: true}

  def rating
    video_review.rating if video_review
  end

 def rating=(new_rating) 
  if video_review
    video_review.update_column(:rating, new_rating)
  else
    review = Review.new(user_id:user.id, video_id:video_id, rating:new_rating)
    review.save(validate: false)
  end
 end

 private
 def video_review
  review ||= Review.where(user_id: user.id, video_id:video_id).first
 end
 
end