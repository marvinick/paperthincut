class Basket < ActiveRecord::Base
  has_many :items, dependent: :destroy

  def add_good(good_id)
    current_item = items.find_by(good_id: good_id)
    if current_item
      current_item.amount += 1
    else
      current_item = items.build(good_id: good_id)
    end
    current_item
  end
end
