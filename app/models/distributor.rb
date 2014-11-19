class Distributor < ActiveRecord::Base
  has_many :good_distributors
  has_many :goods, through: :good_distributors
  has_many :requests, through: :request_distributors
  has_many :requests_distributors
  validates :name, presence: true

end