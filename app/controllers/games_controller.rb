class GamesController < ApplicationController
  def new
      @letters = []
      10.times { @letters << ("A".."Z").to_a[rand(26)] }
      puts @letters
  end

  def score
  end
end
