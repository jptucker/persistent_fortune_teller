class ZodiacsController < ApplicationController
  def signs
    @z=Zodiac.find_by({:sign => params["the_sign"]})
  end

  def creature
    @z=Zodiac.find_by({:creature => params["the_creature"]})
    render 'signs'
  end

  def id
    @z=Zodiac.find_by({:id => params["the_id"]})
    render 'signs'
  end

  def new_form
  end

  def create_row
    @z=Zodiac.new
    @z.sign=params["symbol"]
    @z.creature=params["animal"]
    @z.fortune=params["horoscope"]
    @z.save

  end

end
