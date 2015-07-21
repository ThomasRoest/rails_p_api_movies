class MoviesController < ApplicationController
  def index
    if params[:search]
      @response = Movies.search(params[:search])
    else
      @response = Movies.search("test")
    end
  end

  def show
    @movie = Movies.find(params[:title])
    @poster = @movie["Poster"]
  end
end
