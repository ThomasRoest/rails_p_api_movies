require "httparty"

module Movies
  include HTTParty
  base_uri "www.omdbapi.com"

  def self.find(query)
    get("/?t=#{query}&tomatoes=true").parsed_response
  end

  def self.search(query)
    get("/?s=#{query}").parsed_response
  end

 end
