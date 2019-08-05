require 'open-uri'

class FlatsController < ApplicationController

  before_action :parsing_json_flats

  URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

  def index
    # json_string = open(URL).read
    # @flats = JSON.parse(json_string)
  end

  def show
    # raise
    # url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    # json_string = open(URL).read
    # @flats = JSON.parse(json_string)
    raise
    @flat = @flats.find { |flat| flat['id'] == params["id"].to_i }
  end


  private

  def parsing_json_flats
    json_string = open(URL).read
    @flats = JSON.parse(json_string)
  end

end
