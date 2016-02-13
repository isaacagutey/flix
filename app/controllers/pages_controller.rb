class PagesController < ApplicationController
  before_action :redirect_back
  before_action :set_all_genres
  
  def front_page
    @animations = animation
    @action = action
    @adventure = adventure
    @comedy = comedy
    @crime = crime
    @documentary = documentary
    @foreign = foreign
    @history = history
    @horror = horror
    @music = music
    @mystery = mystery
    @romance = romance
    @science_fiction = science_fiction
    @tv_movie = tv_movie
    @thriller = thriller
    @war = war
    @western = western
    @drama = drama
    @family = family
    @fantasy = fantasy
    
    render 'videos/index'
    
  end
end