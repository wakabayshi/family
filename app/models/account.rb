class Account < ApplicationRecord
  has_many :appointments
  has_many :logs
  has_many :doctors, through: :logs
  has_many :periods, through: :appointments
  has_many :departments, through: :appointments

  has_secure_password
  
end
