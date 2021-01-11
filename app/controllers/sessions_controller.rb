class SessionsController < ApplicationController
  def create
    account=Account.find_by(name: params[:name])
    doctor=Doctor.find_by(name: params[:name])
    admin=Admin.find_by(name: params[:name])
    if account&.authenticate(params[:password])
      session[:account_id]=account.id
    elsif doctor&.authenticate(params[:password])
      session[:doctor_id]=doctor.id
    elsif admin&.authenticate(params[:password])
      session[:admin_id]=admin.id
    else
      flash.alert="名前とパスワードが一致しません"
    end
    redirect_to :root
  end

  def destroy
    if current_account
      session.delete(:account_id)
    elsif current_doctor
      session.delete(:doctor_id)
    elsif current_admin
      session.delete(:admin_id)
    end
    redirect_to :root
  end
end
