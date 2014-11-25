class Backout < ActiveRecord::Base
  validates :item1, presence: true
  validates :amount1, presence: true
end