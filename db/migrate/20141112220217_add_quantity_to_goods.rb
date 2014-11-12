class AddQuantityToGoods < ActiveRecord::Migration
  def change
    add_column :goods, :quantity, :decimal
  end
end
