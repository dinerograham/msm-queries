class DirectorsController < ApplicationController

  def index
    render({:template => "director_templates/list"})
  end

  def show
    an_id = params.fetch("an_id")

    @matching_records = Director.where({:id => an_id})

    @the_director = @matching_records[0]
    render({:template => "director_templates/details"})
  end

  def young
    @the_youngest = Director.all.minimum(dob)
    render({:template => "director_templates/youngest"})
  end
end
