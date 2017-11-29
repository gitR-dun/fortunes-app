class FortunesController < ApplicationController
  def get_fortune
    # write some ruby here
    # tell random fortune
    # make an array of different fortunes
    fortunes = ["You will step in gum", "You will become a billionaire", "You will wake up tomorrow", "If the sun rises it will be sunny"]
    # get a random number from 0 to 3
    random_number = rand(4)
    selected_fortune = fortunes[random_number]
    # pick one of those fortunes at random
    render json: {fortune: selected_fortune}
  end

  def get_numbers
    lottery_numbers = []
    6.times do
      # fill the array
      lottery_numbers << rand(60) + 1
    end
    render json: {numbers: lottery_numbers}
  end

  def counting_method
    # doesn't work
    count = 0
    count += 1
    render json: {count: count}
  end
end
