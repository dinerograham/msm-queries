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
    earliest_bday = Director.all.maximum(:dob)
    @youngest_directors = Director.where({:dob => earliest_bday})
    render({:template => "director_templates/youngest"})
  end

  def old
    latest_bday = Director.all.minimum(:dob)
    @oldest_directors = Director.where({:dob => latest_bday})
    render({:template => "director_templates/oldest"})
  end

end
