Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", {:controller => "directors", :action => "index"})

  get("/directors/:an_id", {:controller => "directors", :action => "show"})

  get("/movies", {:controller => "movies", :action => "index"})

  get("/movies/:movie_id", {:controller => "movies", :action => "display"})
end
