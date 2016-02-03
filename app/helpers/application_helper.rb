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
    # Rails.cache.fetch("movie") do
     movie ||= HTTParty.get("https://api.themoviedb.org/3/movie/#{id}?api_key=b5bbd6c363545bc9f1c48c7f3195372f").parsed_response
    # end
  end

  def options_for_video_reviews(selected=nil)
    options_for_select((1..5).map { |num| [pluralize(num, "Star"), num] }, selected)
  end

  def select_rating(selected=nil)
    
  end

  def format_date(date_time)
    date_time.strftime("%a %B %d, %Y")
  end

  def movie_year(date)
    date.split('-').first if !date.nil?
  end

  def format_number(number)
    number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  end

  def all_genres
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

  def cast(movie_id)
    Tmdb::Movie.cast(movie_id) 
  end

  def crew(movie_id)
    Tmdb::Movie.crew(movie_id) 
  end

  def director(movie_id)
    # Tmdb::Movie.director(movie_id)[0].name 
    director = HTTParty.get("https://api.themoviedb.org/3/movie/#{movie_id}/credits?api_key=b5bbd6c363545bc9f1c48c7f3195372f").parsed_response['crew']
    if !director.nil?
      director.select{ |x| x['job'] == 'Director' }.first['name']
    end
  end

  def similar(movie_id)
    Tmdb::Movie.similar(movie_id) 
  end

  def genres(movie_id)
    Tmdb::Movie.detail(movie_id).genres 
  end

  def production_company(movie_id)
    Tmdb::Movie.detail(movie_id).production_companies.first(3) 
  end

end
