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
    @seating_guest = SeatingGuest.new(seating_params)

    if @seating_guest.save
      redirect_to root_path
    else
      render "new#{@seating_guest.pattern}"
    end
  end

  def show
    @seating = Seating.find(params[:id]) # Seating レコードを取得
    @guests = @seating.guests
  end

  private

  def seating_params
    params.require(:seating_guest).permit(:pattern, :name1, :name2, :name3, :name4, :name5, :name6, :name7, :name8, :name9, :name10, :name11, :name12, :name13, :name14, :name15, :name16, :name17, :name18, :name19, :name20, :name21, :name22, :name23, :name24, :name25, :name26, :name27, :name28, :name29, :name30, :name31, :name32, :name33, :name34, :name35, :name36, :name37, :name38, :name39, :name40, :name41, :name42, :name43, :name44, :name45, :name46, :name47, :name48, :name49, :name50, :name51, :name52, :name53, :name54, :name55, :name56, :name57, :name58, :name59, :name60, :name61, :name62, :name63, :name64, :name65, :name66, :name67, :name68, :name69, :name70, :name71, :name72
    ).merge(user_id: current_user.id)
  end

  def set_pattern
    @pattern = params[:pattern]
  end
end
