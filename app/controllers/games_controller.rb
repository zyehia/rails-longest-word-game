class GamesController < ApplicationController
  def new
      @letters = []
      10.times { @letters << ("A".."Z").to_a[rand(26)] }
  end

  def score
    @letters = params[:letters].split(" ")
    @word = params[:word]
    @word_in_grid = @word.split("").all? {|letter| @letters.include? letter.upcase }
  end
end
