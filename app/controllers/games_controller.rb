class GamesController < ApplicationController

  def new
    @letters = Array.new(10)
    @letters.map! { ('A'..'Z').to_a.sample }
  end

  def score
    @word = params[:word]
    @letters = params[:letters]
    @included = included?(@word, @letters)
    @english_word = english_word?(@word)
  end

end
