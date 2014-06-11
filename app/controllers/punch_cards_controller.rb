class PunchCardsController < ApplicationController

  def index
    @punches = Punch.all
  end

  def new
    @punch = Punch.new
  end


end
