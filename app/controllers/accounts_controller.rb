class AccountsController < ApplicationController
  def index

  end

  def show 
    @patient=Patient.find(params[:id])
  end

  def new
    @patient=Patient.new()
  end

  def edit
    @patient=Patient.find(params[:id])
  end

  def create
    @patient=Patient.new(params[:patient])
    if @patient.save
      redirect_to @patient,notice: "患者を登録しました"
    else
      render "new"
    end
  end

  def update
    @patient=Patient.find(params[:id])
    @patient.assign_attributes(params[:patient])
    if @patient.save
      redirect_to @patient,notice: "患者情報を更新しました"
    else
      render "edit"
    end
  end

  def destroy
    @patient=Patient.find(params[:id])
    @patient.destroy
    redirect_to :patients,notice: "患者を削除しました"
  end

end
