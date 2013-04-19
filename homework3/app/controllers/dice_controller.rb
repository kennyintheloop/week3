class DiceController < ApplicationController

  def index

  end
  def roll
    @title = 'Roll it baby!'
    @rand_numb1 = rand(1..6)
    @rand_numb2 = rand(1..6)
    @turn = 1
    if request.post?
      if params[:point]
        @sum = @rand_numb1+ @rand_numb2 + params[:point].to_i()
        @turn += 1
      else
        @sum = @rand_numb1+ @rand_numb2
      end
    end
    @sum ||= -1
  end

end
