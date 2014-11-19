class Request < ActiveRecord::Base
  has_many :items, dependent: :destroy
  belongs_to :good, foreign_key: :good_id
  has_many :distributors, through: :request_distributors
  has_many :request_distributors

  def add_items_from_basket(basket)
    basket.items.each do |item|
      item.basket_id = nil
      items << item
    end
  end
end