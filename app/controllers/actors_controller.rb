class ActorsController < ApplicationController

  def index
    render({:template => "actor_templates/list"})
  end

  def show
    an_id = params.fetch("actor_id")

    @matching_records = Actor.where({:id => an_id})

    @the_actor = @matching_records[0]
    render({:template => "actor_templates/details"})
  end

end
