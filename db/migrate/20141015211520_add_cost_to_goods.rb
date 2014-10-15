class AddCostToGoods < ActiveRecord::Migration
  def change
    add_column :goods, :cost, :integer
  end
end
