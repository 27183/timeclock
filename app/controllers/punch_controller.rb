class PunchController < ApplicationController

  def index
    @punches = Punch.all
  end

  def show
    id = params[:id]
    @punch = Punch.find(id)
  end

  def punch_params
    params.permit(:time_in, :time_out)
  end

  def new
    #default
  end

end