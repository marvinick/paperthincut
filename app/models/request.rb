class Request < ActiveRecord::Base
  validates :name, :email, presence: true
  has_many :items, dependent: :destroy

  def add_items_from_basket(basket)
    basket.items.each do |item|
      item.basket_id = nil
      items << item
    end
  end
end