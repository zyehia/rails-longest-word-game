require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
      @letters = []
      10.times { @letters << ("A".."Z").to_a[rand(26)] }
  end

  def score
    @letters = params[:letters].split(" ")
    @word = params[:word]
    @word_in_grid = @word.split("").all? {|letter| @letters.include? letter.upcase }
    
    raw_data = open("https://wagon-dictionary.herokuapp.com/#{@word}").read
    json_data = JSON.parse(raw_data)
    @word_is_real = json_data["found"]
  end
end
