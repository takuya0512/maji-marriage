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
    puts "seating.showアクション実行"




    @seating = Seating.find_by(table_code: params[:table_code], position_code: params[:position_code])

    # SeatingモデルからGuestモデルをクエリ
    @guests = @seating.guests if @seating

    # Viewにデータを渡す
    render :show



    # @seating = Seating.find(params[:id])

    # @seating_guest = SeatingGuest.new(pattern: params[:pattern], table_code: params[:table_code], 
    # position_code: params[:position_code], user_id: params[:user_id], name: params[:name])
    # render "show#{@seating_guest.pattern}"
  end


  private

  def seating_guest_params
    params.require(:seating_guest).permit(:pattern, :table_code, :position_code, :name)
    .merge(user_id: current_user.id)
  end

  def set_pattern
    @pattern = params[:pattern]
  end
end