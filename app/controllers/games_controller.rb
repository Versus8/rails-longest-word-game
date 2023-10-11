class GamesController < ApplicationController
  def new
    letters = []
    10.times { letters.push(('a'..'z').to_a.sample) }
    @letters = letters
  end

  def score
  end
end
