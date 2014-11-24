class CreateGoodInventories < ActiveRecord::Migration
  def change
    create_table :good_inventories do |t|
      t.integer :good_id, :inventory_id
      t.timestamps
    end
  end
end
