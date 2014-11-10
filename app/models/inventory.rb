class Inventory < ActiveRecord::Base
  has_many :goods, foreign_key: :inventory_id
  validates :name, presence: true
end