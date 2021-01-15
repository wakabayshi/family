class Period < ApplicationRecord
  has_many :appointments
  has_many :accounts, through: :appointments
  has_many :departments, through: :appointments
  belongs_to :doctor,optional: true
  # belongs_to :department,optional: true

  validates :maxnumber,presence: true,numericality: {only_integer: true, greater_than_or_equal_to: 0}

  def mininumber
    if maxnumber!=nil
      if maxnumber<number 
      errors.add(:period,"Maxnumber is smaller than number")
      end
    end
  end
  validate :mininumber

end
