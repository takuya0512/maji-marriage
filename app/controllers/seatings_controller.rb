class SeatingsController < ApplicationController

  def index
  end

  def select_pattern
    @seatings = Seating.all
  end

  def new
    # パターン情報をセッションに保存
    session[:selected_pattern] = params[:pattern]

    @seating = Seating.new
    @pattern = session[:selected_pattern]

    if @pattern == 'A'
    render 'newA'
    elsif @pattern == 'B'
      render 'newB'
    elsif @pattern == 'C'
      render 'newC'
    else
      render 'unknown_pattern'
    end
  end

  def create
    @seating = Seating.new(seating_params)

    if @seating.save
      # セッションからパターン情報を取得し、それを元に遷移
      redirect_to new_seating_path(pattern: session[:selected_pattern])
    else
      render :new
    end
  end

  private

  def seating_params
    params.require(:seating).permit(:pattern)
  end
end