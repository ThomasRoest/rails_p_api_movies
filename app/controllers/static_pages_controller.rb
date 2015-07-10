class StaticPagesController < ApplicationController
  def home
    if params[:search]
      query = params[:search]
      httparty_get = HTTParty.get("http://www.omdbapi.com/?t=#{query}")
      @response = httparty_get.parsed_response
    else
      @response = {:title => "nope"}
    end
  end
end
