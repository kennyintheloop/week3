class RpsController < ApplicationController

  def index
    @rps_list = ['rock','paper','scissor']
    if params[:choose].present? and request.post?
      rand_numb = rand(0..2)
      @user_pick = params[:choose]
      @comp_pick = @rps_list[rand_numb]
      if @user_pick == @comp_pick
        @result = 'DRAW'
      elsif @user_pick == 'rock'
        if @comp_pick == 'paper'
          @result = 'COMPUTER WINS'
        elsif @comp_pick == 'scissor'
          @result = "YOU WIN!"
        end
      elsif @user_pick == 'paper'
        if @comp_pick == 'rock'
          @result = "YOU WIN!"
        elsif @comp_pick == 'scissor'
          @result = 'COMPUTER WINS'
        end
      elsif @user_pick == 'scissor'
        if @comp_pick == 'rock'
          @result = 'COMPUTER WINS'
        elsif @comp_pick == 'paper'
          @result = "YOU WIN!"
        end
      end
    end
    @user_pick ||= "Time to play!"
    @result ||= ''
  end

end
