class Roll < ActiveRecord::Base
  validates_presence_of :name
  ratyrate_rateable 'healthy', 'visual', 'texture', 'flavor'
end