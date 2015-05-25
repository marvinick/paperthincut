class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "Sucker"
  belongs_to :rateable, :polymorphic => true
end
