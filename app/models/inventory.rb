class Inventory < ActiveRecord::Base
  has_many :good_inventories
  has_many :goods, through: :good_inventories
  validates :name, presence: true
end