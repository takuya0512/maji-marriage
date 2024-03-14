class SeatingsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_pattern, only: [:new, :create]

  def index
  end

  def select_pattern
    render "new#{@pattern}" if ['A', 'B', 'C'].include?(@pattern)
  end

  def new
    @seating_guest = SeatingGuest.new
    select_pattern
  end

  def create
    @seating_guest = SeatingGuest.new(seating_guest_params)

    if @seating_guest.save
      redirect_to root_path
    else
      render "new#{@seating_guest.pattern}"
    end
  end

  def show
    @seating = Seating.find(params[:id])
  end

  private

  def seating_guest_params
    params.require(:seating_guest).permit(:pattern, :table_code, :position_code, :name, :seating_id)
    .merge(user_id: current_user.id)
  end

  def set_pattern
    @pattern = params[:pattern]
  end
end
