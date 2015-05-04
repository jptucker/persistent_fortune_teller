class FortunesController < ApplicationController
  def lucky
    @first_number = rand(100)
    @second_number = rand(100)
    @third_number = rand(100)
    @fourth_number = rand(100)
    @fifth_number = rand(100)
  end

  def unlucky
    @numbers = [rand(100...1000), rand(100...1000), rand(100...1000), rand(100...1000), rand(100...1000)]
  end

  def two_numbers

    first_num=params[:first_num].to_i
    second_num=params[:second_num].to_i
    @textcolor=params[:color]
    @random_number=rand(second_num-first_num) + first_num

  end

end
