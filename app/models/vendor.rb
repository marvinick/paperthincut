class Vendor < ActiveRecord::Base
  has_many :products
  belongs_to :member
end