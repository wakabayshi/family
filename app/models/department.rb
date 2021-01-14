class Department < ApplicationRecord
  has_many :appointments
  has_many :doctors
  has_many :accounts, through: :appointments
  has_many :periods, through: :appointments
  # has_many :periods
end
