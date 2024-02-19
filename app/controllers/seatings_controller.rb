class SeatingsController < ApplicationController
  def index
  end

  def new
    @seating =Seating.new
  end

  # def create
  #   # フォームからのパラメータを取得
  #   table_count = params[:initial_setup][:table_count].to_i
  #   num_of_columns = params[:initial_setup][:num_of_columns].to_i
  #   column_tables = []

  #   # 1列目からnum_of_columns列目までのテーブルの数を取得
  #   (1..num_of_columns).each do |column|
  #     column_tables << params[:initial_setup]["column#{column}_tables"].to_i
  #   end

  #   # テーブルの総数から配置されたテーブルの数を引くことで残りのテーブル数を計算
  #   remaining_tables = table_count - column_tables.sum

  #   # TODO: 必要に応じて残りのテーブル数を利用して適切な処理を行う
  #   # 例: あまりがある場合の処理
  #   if remaining_tables.negative?
  #     flash[:alert] = 'エラー: テーブルの数が過剰です。'
  #     render :new
  #     return
  #   elsif remaining_tables.positive?
  #     flash[:notice] = "注意: 残りの#{remaining_tables}テーブルは自動で割り当てられます。"
  #   end

  #   # 適切な処理を行った後、リダイレクト
  #   redirect_to root_path, notice: 'Seating created successfully'
  # end
end