class GamesController < ApplicationController
  def new
    letters = []
    10.times { letters.push(('A'..'Z').to_a.sample) }
    @letters = letters
  end

  def score
    params[:word].split('').each do |letter|
      unless params[:letters].include?(letter)
        @result = "Sorry but #{params[:word]} can't be build out of the letters"
      end
    end
  end
end
