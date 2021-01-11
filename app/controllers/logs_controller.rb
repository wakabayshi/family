class LogsController < ApplicationController
  def index
    @log=Log.all
  end
  
  def show
  end

  def new
    @log=Log.new()
  end

  def create
    @log=Log.create(log_params)
    @log.doctor=current_doctor
    if @log.save
      redirect_to "/",notice:"カルテを作成しました"
    else
      redirect_to "/",notice:"作成に失敗しました"
    end
  end

  def edit
    @log=Log.find(params[:id])
  end

  def update
    @log=Log.find(params[:id])
    @log.assign_attributes(log_params)
    if @log.save
      redirect_to "/",notice: "予約情報を更新しました"
    else
      render "edit"
    end
  end

  def destroy
    @log=Log.find(params[:id])
    @log.destroy
    redirect_to "/logs",notice: "予約を削除しました"
  end

  private
  def log_params  #ストロングパラメータを定義していく
    params.require(:log).permit(:account_id,:symptom) #requireメソッドとpermitメソッドを利用
  end
end
