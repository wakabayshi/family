class Log < ApplicationRecord
  belongs_to :doctor
  belongs_to :account

  validates :symptom, presence: true
end
