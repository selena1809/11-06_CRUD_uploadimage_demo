class LoveDaysController < ApplicationController
  def new
    @love_day = LoveDay.new
  end
  def create
    @love_day = LoveDay.new(love_day_params)

    if @love_day.save
      redirect_to @love_day
    else
      render 'new'
    end
  end

def show
  @love_day = LoveDay.find(params[:id])
end
  private
  def love_day_params
    params.require(:love_day).permit(:startday, :endday)
  end
end
