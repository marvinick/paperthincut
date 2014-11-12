class Good < ActiveRecord::Base
  has_many :good_distributors
  has_many :distributors, through: :good_distributors
  belongs_to :inventory
  validates :name, presence: true
  validates :unit, presence: true
  has_many :items
  has_many :requests, foreign_key: :good_id
  before_destroy :ensure_not_referenced_by_item

  private

  def ensure_not_referenced_by_item
    if items.empty?
      return true
    else
      errors.add(:base, 'Items present')
      return false
    end
  end
end