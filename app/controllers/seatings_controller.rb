class SeatingsController < ApplicationController
  def index
  end

  def new
    @seating = Seating.new
  end
end
