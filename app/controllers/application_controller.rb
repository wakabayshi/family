class ApplicationController < ActionController::Base
  private def current_account
    Account.find_by(id: session[:account_id]) if session[:account_id]
  end
  helper_method :current_account

  private def current_doctor
    Doctor.find_by(id: session[:doctor_id]) if session[:doctor_id]
  end
  helper_method :current_doctor

  private def current_admin
    Admin.find_by(id: session[:admin_id]) if session[:admin_id]
  end
  helper_method :current_admin

  class Loginrequired < StandardError; end
  class Forbidden < StandardError; end

  private def login_required
    raise Loginrequired unless current_account || current_admin
  end
  a=[0,0,0,0,0,0,0,0,0,0]
    Appointment.all.each do |idx|
      0.upto(9) do |s|
        if idx.period_id===s+1
          a[s]+=1
        end
      end
    end
    Appointment.all.each do |idx|
      1.upto(10) do |s|
        period=Period.find(s)
        number=period.number
        if idx.period_id===s
          period.number+=1
          if period.number<=a[s-1]
            period.save
          end
        end
      end
    end 
end
