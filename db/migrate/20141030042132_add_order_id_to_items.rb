class AddOrderIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :order_id, :int
  end
end
