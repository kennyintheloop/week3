class PokerController < ApplicationController

  def index
    #LOOP 5 TIMES
    #(1) Choose one from 2~10,jack,king,queen,ace
    @card_number = ['2','3','4','5','6','7','8','9','10','jack','king','queen','ace']
    #append '_of_'
    #(2) Choose one from clubs,diamonds,hearts,spades
    @card_shape = ['clubs','diamonds','hearts','spades']
    @selected_ar = []
    (1..5).each do |i|
      picture_img = @card_number[rand(0..12)] + '_of_' + @card_shape[rand(0..3)]+'.png'
      @selected_ar.push(picture_img)
    end
  end

end
