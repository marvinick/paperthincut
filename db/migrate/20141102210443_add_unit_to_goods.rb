class AddUnitToGoods < ActiveRecord::Migration
  def change
    add_column :goods, :unit, :string
  end
end
