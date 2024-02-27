class SeatingsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_pattern, only: [:new, :create]

  def index
  end

  def select_pattern
  
    puts "selectアクション"
    render "new#{@pattern}" if ['A', 'B', 'C'].include?(@pattern)
  end

  def new
    puts "newアクション"
    @seating_guest = SeatingGuest.new
    select_pattern
  end

  def create
    puts "createアクションやったよ"
    @seating_guest = SeatingGuest.new(seating_guest_params)

    if @seating_guest.save
      redirect_to root_path
    else
      render "new#{@seating_guest.pattern}"
    end
  end

  private

  def seating_guest_params
    params.require(:seating_guest).permit(:pattern, :table_code, :position_code, :name).merge(user_id: current_user.id)
  end

  def set_pattern
    @pattern = params[:pattern]
  end
end