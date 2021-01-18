class Account < ApplicationRecord
  has_many :appointments,dependent: :destroy
  has_many :logs
  has_many :doctors, through: :logs
  has_many :periods, through: :appointments
  has_many :departments, through: :appointments

  has_secure_password
  
  validates :name, presence: true,uniqueness: true

  validates :password, presence: true


end
