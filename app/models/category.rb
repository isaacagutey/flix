class Category < ActiveRecord::Base
	has_many :video_category
	has_many :videos, through: :video_category
	validates_presence_of :name

	before_save :generate_slug

	def generate_slug
		self.slug = self.name.gsub(" ","-").downcase
	end
    
  def to_param
    self.slug
  end

  def recent_videos
  	videos.order("created_at DESC").first(3)
  end

end