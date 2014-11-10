class AddInventoryIdToGoods < ActiveRecord::Migration
  def change
    add_column :goods, :inventory_id, :integer
  end
end
