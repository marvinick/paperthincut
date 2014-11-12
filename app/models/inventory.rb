class Inventory < ActiveRecord::Base
  has_many :goods
  validates :name, presence: true
end