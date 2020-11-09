class GamesController < ApplicationController
  def new
      @letters = []
      10.times { @letters << ("A".."Z").to_a[rand(26)] }
  end

  def score
    @letters = params[:letters].split(" ")
    p @letters
    @word = params[:word]
    p @word
    @error = !@word.split("").all? {|letter| @letters.include? letter.upcase }
  end
end
