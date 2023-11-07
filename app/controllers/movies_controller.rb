class MoviesController < ApplicationController

  def index
    render({:template => "movie_templates/list"})
  end

  def display
    an_id = params.fetch("movie_id")

    @matching_records = Movie.where({:id => an_id})

    @the_movie = @matching_records[0]
    
    render({:template => "movie_templates/details"})
  end
end
