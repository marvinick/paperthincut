class Inventory < ActiveRecord::Base
  has_many :products
  validates :name, presence: true
  validates :unit, presence: true
end