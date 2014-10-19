class Distributor < ActiveRecord::Base
  has_many :good_distributors
  has_many :goods, through: :good_distributors

  validates :name, presence: true

end