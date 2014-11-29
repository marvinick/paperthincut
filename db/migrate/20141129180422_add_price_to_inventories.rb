class AddPriceToInventories < ActiveRecord::Migration
  def change
    add_column :inventories, :price, :decimal
  end
end
