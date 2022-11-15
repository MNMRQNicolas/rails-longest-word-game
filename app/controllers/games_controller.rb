require "json"
require "open-uri"

class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      @letters << ("a".."z").to_a.sample
    end
  end

  def score
    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    word_serialized = URI.open(url).read
    word = JSON.parse(user_serialized)
    raise
    # user["found"]
  end
end
