class Appointment < ActiveRecord::Base
  validates :chef, presence: true
  validates :background, presence: true
end