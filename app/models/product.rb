class Product < ActiveRecord::Base
  has_many :vendors, through: :product_vendors
  has_many :product_vendors
  validates :name, :description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :name, uniqueness: true
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_items

  private

  def ensure_not_referenced_by_any_line_items
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end
end