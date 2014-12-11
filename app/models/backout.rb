class Backout < ActiveRecord::Base
  validates :item1, presence: true
  validates :amount1, presence: true
  validates :item2, presence: true
  validates :amount2, presence: true
  validates :item3, presence: true
  validates :amount3, presence: true
end