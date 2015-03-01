class InventoryCalendar < ActiveRecord::Base
  belongs_to :calendar
  belongs_to :inventory
end