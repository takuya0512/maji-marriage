class SeatingsController < ApplicationController
  def index
  end

  def new
    @seating = Seating.new
  end

  def create
    @seating = Seating.new(seating_params)

    if @seating.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def seating_params
    params.require(:seating).permit(:name, :guest1, :guest2, :guest3, :guest4, :guest5, :guest6)
  end
end
