class Backout < ActiveRecord::Base
  validates :month, presence: true
  validates :item1, presence: true
  validates :amount1, presence: true
end