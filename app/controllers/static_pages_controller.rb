class StaticPagesController < ApplicationController
  def home
    httparty_get = HTTParty.get('http://www.omdbapi.com/?t=heat&y=&plot=short&r=json&tomatoes=true')
    @response = httparty_get.parsed_response
  end
end
