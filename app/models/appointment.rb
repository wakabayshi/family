class Appointment < ApplicationRecord
  belongs_to :account
  belongs_to :department
  belongs_to :period

  # def check_number_of_appoinments(period)
  #   if period.number>=@period.maxnumber
  #     redirect_to "/",notice: "上限人数に達しています"
  #   end
  # end
  # validate :check_number_of_appoinments

  validates :account,uniqueness:{scope: :period}

  # class << self
  #   def search(query,rel)
  #     if query.present?
  #       Appointment.all.each do |appointment|
  #         rel = Appointment.where("#{appointment.department.name} LIKE ?","%#{query}%")
  #       end
  #     end
  #     rel
  #   end
  # end
end
