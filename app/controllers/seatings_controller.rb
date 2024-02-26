class SeatingsController < ApplicationController
  before_action :set_pattern, only: [:new, :create]

  def index
  end

  def new
    @seating = Seating.new
    select_pattern
  end

  def create
    @seating_guest = SeatingGuest.new(seating_guest_params)

    if 
      # @seating_guest.valid?
      @seating_guest.save
      redirect_to root_path
    else
      select_pattern
    end
  end

  private

  def seating_guest_params
    params.require(:seating_guest).permit(:pattern, :table_code, :position_code, :name).merge(user_id: current_user.id)
  end

  def set_pattern
    @pattern = params[:pattern]
  end

  def select_pattern
    case @pattern
    when 'A', 'B', 'C'
      render "new#{@pattern}"
    else
      render root_path
    end
  end
end
