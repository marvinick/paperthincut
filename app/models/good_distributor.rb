class GoodDistributor < ActiveRecord::Base
  belongs_to :good
  belongs_to :distributor
end