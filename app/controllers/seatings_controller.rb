class SeatingsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_pattern, only: [:new, :create]
  before_action :set_seating, only: [:edit, :update, :destroy, :show]

  def index
  end

  def select_pattern
    render "new#{@pattern}" if %w[A B C].include?(@pattern)
  end

  def new
    @pattern = params[:pattern]
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
  end

  def edit
    if current_user.id != @seating.user_id
    redirect_to root_path
    end
  end

  def update
    if @seating_guest.update(guest_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @seating.destroy
    redirect_to root_path
  end

  private

  def set_seating
    @seating = Seating.find(params[:id])
    @seating_guest = @seating.guest
  end

  def seating_guest_params
    params.require(:seating_guest).permit(:pattern, *guest_names).merge(user_id: current_user.id)
  end

  def guest_params
    params.require(:guest).permit(:pattern, *guest_names)
  end

  def set_pattern
    @pattern = params[:pattern]
  end

  def guest_names
    (1..72).map { |n| "name#{n}" }
  end
end
