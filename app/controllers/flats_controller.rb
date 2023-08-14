require 'open-uri'

class FlatsController < ApplicationController
  def index
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    # make a request to the API
    json = URI.open(url).read
    @flats = JSON.parse(json)
    # parse the json into an array of hashes
    # pass that array as an instance variable to the view (index.html.erb)
  end
end
