require "httparty"

module Nomadlist
  include HTTParty
  base_uri 'https://nomadlist.com/api/v2/cities'
  
  def self.find_cities
    get('https://nomadlist.com/api/v2/cities').parsed_response["result"]

  end
end