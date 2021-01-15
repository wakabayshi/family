class DoctorsController < ApplicationController
  def index
    @doctor=Doctor.order(:id)
  end

  def show 
    @doctor=Doctor.find(params[:id])
  end

  def new
    @doctor=Doctor.new()
  end

  def edit
    @doctor=Doctor.find(params[:id])
  end

  def create
    @doctor=Doctor.new(doctor_params)
    if @doctor.save
      redirect_to "/",notice: "先生を登録しました"
    else
      render "new",notice:"登録に失敗しました。"
    end
  end

  def update
    @doctor=Doctor.find(params[:id])
    @doctor.assign_attributes(doctor_params)
    if @doctor.save
      redirect_to "/",notice: "先生情報を更新しました"
    else
      redirect_to "/doctors",notice:"更新に失敗しました"
    end
  end

  def destroy
    @doctor=Doctor.find(params[:id])
    @doctor.destroy
    redirect_to :doctors,notice: "先生を削除しました"
  end
  private
  def doctor_params  #ストロングパラメータを定義していく
    params.require(:doctor).permit(:name,:password,:department_id) #requireメソッドとpermitメソッドを利用
  end
  def doctor_params2  #ストロングパラメータを定義していく
    params.require(:doctor).permit(:name,:department_id) #requireメソッドとpermitメソッドを利用
  end
end
