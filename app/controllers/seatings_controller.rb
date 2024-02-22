class SeatingsController < ApplicationController
  before_action :find_seating, only: [:show, :edit, :update, :destroy]
  # before_action :find_guest, only: [:edit_guest, :update_guest]

  def index
  end

  def select_pattern
    # パターン選択画面
    @seatings = Seating.all
  end

  def show
    # 席次表の詳細画面
    @guests = @seating.guests
  end

  def new
    # 新しい席次表の作成画面
    @seating = Seating.new
    @pattern = params[:pattern]

    if @pattern == 'A'
    render 'newA'
    elsif @pattern == 'B'
      render 'newB'
    elsif @pattern == 'C'
      render 'newC'
    else
      # 未知のパターンが渡された場合の処理（エラー処理など）
      render 'unknown_pattern'
    end
  end

  def create
    # 新しい席次表の作成
    @seating = Seating.new(seating_params)

    if @seating.save
      redirect_to seating_path(@seating), notice: 'Seating was successfully created.'
    else
      render :new
    end
  end

  # def edit
  #   # 席次表の編集画面
  # end

  # def update
  #   # 席次表の更新処理
  #   if @seating.update(seating_params)
  #     redirect_to seating_path(@seating), notice: 'Seating was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   # 席次表の削除処理
  #   @seating.destroy
  #   redirect_to root_path, notice: 'Seating was successfully destroyed.'
  # end

  # def edit_guest
  #   # ゲスト情報編集画面
  # end

  # def update_guest
  #   # ゲスト情報更新
  #   if @guest.update(guest_params)
  #     redirect_to seating_path(@seating), notice: 'Guest was successfully updated.'
  #   else
  #     render :edit_guest
  #   end
  # end

  # private

  # def find_seating
  #   @seating = Seating.find(params[:id])
  # end

  # def find_guest
  #   @guest = Guest.find(params[:id])
  # end

  # def seating_params
  #   # 席次表のストロングパラメータ
  #   params.require(:seating).permit(:pattern, :other_attributes)
  # end

  # def guest_params
  #   # ゲスト情報のストロングパラメータ
  #   params.require(:guest).permit(:name)
  # end

end