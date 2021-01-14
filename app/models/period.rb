class Period < ApplicationRecord
  has_many :appointments
  has_many :accounts, through: :appointments
  has_many :departments, through: :appointments
  belongs_to :doctor,optional: true
  # belongs_to :department,optional: true

  validates :maxnumber,numericality: {only_integer: true, greater_than_or_equal_to: 0,allow_blank: true}


end
