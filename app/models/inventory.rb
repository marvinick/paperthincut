class Inventory < ActiveRecord::Base
  has_many :good_inventories
  has_many :goods, through: :good_inventories
  has_many :inventory_calendars
  has_many :calendars, through: :inventory_calendars
  validates :name, presence: true
end