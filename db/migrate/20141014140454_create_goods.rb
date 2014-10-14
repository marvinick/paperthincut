class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :name, :description
      t.integer :amount
      t.decimal :price
      t.timestamps
    end
  end
end
