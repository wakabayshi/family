class Appointment < ApplicationRecord
  belongs_to :account
  belongs_to :department
  belongs_to :period
end
