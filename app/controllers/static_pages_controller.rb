class StaticPagesController < ApplicationController
  # @@nomadlist_response = Nomadlist.find_cities

  def home
  end

  def nomadlist
    if params[:cities] == "all"
      @response = Nomadlist.find_cities
    else
      @response = {:error => "could not retrieve data"}
    end
  end

   # def show
   #   @city = @@nomadlist_response[params[:city]]
   #   # @info = @city["info"]
   # end

   def test

   end
end
