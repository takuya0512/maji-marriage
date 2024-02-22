class PatternsController < ApplicationController
  def index
    @patterns = Pattern.all
  end

  def select
    case params[:pattern]
    when 'A'
      # パターンAの処理
      render 'newA'
    when 'B'
      # パターンBの処理
      render 'newB'
    when 'C'
      # パターンCの処理
      render 'newC'
    else
      # パターンが選択されていない場合の処理
      redirect_to root_path
    end
  end
end
