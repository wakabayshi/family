class Period < ApplicationRecord
  has_many :appointments
  has_many :accounts, through: :appointments
  has_many :departments, through: :appointments
  belongs_to :doctor
end
