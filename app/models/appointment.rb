class Appointment < ActiveRecord::Base
  validates :chef, presence: true
end