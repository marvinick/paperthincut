class RequestDistributor < ActiveRecord::Base
  belongs_to :request
  belongs_to :distributor
end