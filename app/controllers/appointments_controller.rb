class AppointmentsController < ApplicationController
  def index
    @appointment=current_account.appointments
  end

  def show 
  end

  def search

    # current_account.departments.each do|idx|
    #   @department.push(idx)
    # end
    @department=[]
    @department=current_account.departments
    @period=current_account.periods
    @appointment=Appointment.search(params[:q],@department)
    render "index"
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
    @period=@appointment.period
    if @period.number<@period.maxnumber
      if @appointment.save 
        redirect_to "/",notice: "予約を完了しました"
      else
        redirect_to "/",notice: "予約に失敗しました"
      end
    else
      redirect_to"/",notice: "予約上限に達しています"
    end
  end

  def edit
    @appointment=Appointment.find(params[:id])
  end
  

  def update
    @appointment=Appointment.find(params[:id])
    @appointment.assign_attributes(appointment_params)
    if @appointment.save
      redirect_to "/",notice: "予約情報を更新しました"
    else
      render "edit"
    end
  end

  def destroy
    @appointment=Appointment.find(params[:id])
    @appointment.destroy
    redirect_to "/appointments",notice: "予約を削除しました"
  end
  private
  def appointment_params  #ストロングパラメータを定義していく
    params.require(:appointment).permit(:department_id,:period_id) #requireメソッドとpermitメソッドを利用
  end
  
end
