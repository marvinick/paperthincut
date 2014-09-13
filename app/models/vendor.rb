class Vendor < ActiveRecord::Base
  has_many :product_vendors
  has_many :product, through: :product_vendors
  belongs_to :member
end