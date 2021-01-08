class AppointmentsController < ApplicationController
  def index
  end

  def show 
    @doctor=Doctor.find(params[:id])
  end

  def new
    @appointment=Appointment.new()
  end

  def create
    @appointment=Appointment.new(appointment_params)
    # @period=Period.find_by(params[:period])
    # @department=Department.find_by(params[:department])
    # @appointment.period=@period
    # @appointment.department=@department
    @appointment.account=current_account
    if @appointment.save 
      redirect_to "/",notice: "予約を完了しました"
    else
      redirect_to "/",notice: "予約に失敗しました"
    end
  end

  def edit
    @doctor=Doctor.find(params[:id])
  end
  

  def update
   
  end

  def destroy
 
  end
  private
  def appointment_params  #ストロングパラメータを定義していく
    params.require(:appointment).permit(:department_id,:period_id) #requireメソッドとpermitメソッドを利用
  end
  
end
