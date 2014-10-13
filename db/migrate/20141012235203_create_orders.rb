class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name, :description
      t.integer :quantity
      t.timestamps
    end
  end
end
