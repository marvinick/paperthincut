class Item < ActiveRecord::Base
  belongs_to :good
  belongs_to :basket
  belongs_to :request

  def total_price
    if good.price.nil?
      return 0.0
    else
      good.price * amount
    end
  end
end
