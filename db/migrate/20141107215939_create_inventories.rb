class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :name, :unit
      t.text :description
      t.integer :amount
      t.timestamps
    end
  end
end
