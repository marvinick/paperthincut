class Calendar < ActiveRecord::Base
  has_many :inventory_calendars
  has_many :inventories, through: :inventory_calendars
end