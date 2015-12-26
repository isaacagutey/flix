class Video < ActiveRecord::Base
  has_many :video_categories
  has_many :categories, through: :video_categories
  validates_presence_of :title, :description

  before_save :generate_slug

  def generate_slug
    self.slug = self.title.gsub(" ","-").downcase
  end
    
  def to_param
    self.slug
  end

  def self.search_by_title(search_term)
    return [] if search_term.blank?
    where("lower(title) LIKE ?","%#{search_term.downcase}%").order("created_at DESC")
  end

  # def self.recent_videos
  #   self.all.order("created_at DESC").first(3)
  # end

end