class PunchCardsController < ApplicationController

  def index
    @punches = Punch.all.order(:punch_in).reverse_order
  end

  def new
    @punch = Punch.create(punch_in: Time.now())
    flash[:success] = "Punched In Sucessfully"
    redirect_to root_path
  end

end
