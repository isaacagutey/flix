module ApplicationHelper

  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message 
            end)
    end
    nil
  end

  def movie(id)
    Tmdb::Movie.detail(id) 
  end

  def options_for_video_reviews(selected=nil)
    options_for_select((1..5).map { |num| [pluralize(num, "Star"), num] }, selected)
  end

  def select_rating(selected=nil)
    
  end

  def format_date(date_time)
    date_time.strftime("%a %B %d, %Y")
  end

  def genres
    @animation = 16
    @action = 28
    @adventure = 12
    @comedy = 35
    @crime = 80
    @documentary = 99
    @foreign = 10769
    @history = 36
    @horror = 27
    @music = 10402
    @mystery = 9648
    @romance = 10749
    @science_fiction = 878
    @tv_movie = 10770
    @thriller = 53
    @war = 10752
    @western = 37
    @drama = 18
    @family = 10751
    @fantasy = 14
  end

end

