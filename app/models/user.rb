class User < ActiveRecord::Base
  has_many :reviews, -> {order(created_at: :desc)}
  has_many :queue_items
  has_many :favourites
  has_many :following_relationships, class_name: "Friendship", foreign_key: :user_id
  has_many :leading_relationships, class_name: "Friendship", foreign_key: :friend_id
  validates_presence_of :email, :password, :full_name
  validates_uniqueness_of :email

  has_secure_password

  def normalize_queue_items_positions
    queue_items.each_with_index do |queue_item, index|
      queue_item.update_attributes(position: index+1)
    end
  end

  def queued_video?(video_id)
   queue_items.map(&:video_id).include?(video_id)
  end

  def favourited_video?(video_id)
    favourites.map(&:video_id).include?(video_id)
  end

  def follows?(user)
    following_relationships.map(&:friend_id).include?(user.id)
  end

  def queued_videos
    queue_items.select{|video|video.video_id}
  end

end