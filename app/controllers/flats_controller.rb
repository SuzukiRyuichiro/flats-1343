require 'open-uri'

class FlatsController < ApplicationController
  def index
    @flats = get_flats
    # pass that array as an instance variable to the view (index.html.erb)
  end

  def show
    # find the hash with the id in the url
    flats = get_flats
    # assing that single hash as an instance variable and pass it onto view
    @flat = flats.find { |flat| flat['id'] == params[:id].to_i }
  end

  private

  def get_flats # making the API request and returning an array of flat hashes
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    # make a request to the API
    json = URI.open(url).read
    # parse the json into an array of hashes
    JSON.parse(json)
  end
end
