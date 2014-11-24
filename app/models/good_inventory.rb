class GoodInventory < ActiveRecord::Base
  belongs_to :good
  belongs_to :inventory
end