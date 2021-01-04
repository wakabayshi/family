class Doctor < ApplicationRecord
  belongs_to :department
  has_many :periods, dependent: :destroy
  has_many :logs
  has_many :accounts, through: :logs

  has_secure_password
  
end
