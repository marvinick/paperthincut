class Good < ActiveRecord::Base
  has_many :good_distributors
  has_many :distributors, through: :good_distributors

  validates :name, presence: true

  has_many :items
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