class Roll < ActiveRecord::Base
  ratyrate_rateable 'healthy', 'visual', 'texture', 'flavor'
end