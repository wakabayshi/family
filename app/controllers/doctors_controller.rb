class DoctorsController < ApplicationController
  def index
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
    @doctor=Doctor.new(params[:patient])
    if @doctor.save
      redirect_to @doctor,notice: "患者を登録しました"
    else
      render "new"
    end
  end

  def update
    @doctor=Doctor.find(params[:id])
    @doctor.assign_attributes(params[:doctor])
    if @doctor.save
      redirect_to @doctor,notice "患者情報を更新しました"
    else
      render "edit"
    end
  end

  def destroy
    @doctor=Doctor.find(params[:id])
    @doctor.destroy
    redirect_to :doctors,notice "先生を削除しました"
  end
end
