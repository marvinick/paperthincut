class Item < ActiveRecord::Base
  belongs_to :good
  belongs_to :basket
  belongs_to :request

  def total_price
    good.price * amount
  end
end
