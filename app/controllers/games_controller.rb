class GamesController < ApplicationController

  def new
    @letters = Array.new(9) {("a".."z").to_a.sample}
  end

  def score
    @letters = params[:letters].chars
    @choice = params[:choice]

    if !same_letters?
        @message = "Pas bonne lettre"
    end
  end

  private

  def same_letters?
    @choice.chars.each do |letter|
      return false if !@letters.include?(letter)
    end
    return true
  end


end

