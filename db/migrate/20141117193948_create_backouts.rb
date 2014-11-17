class CreateBackouts < ActiveRecord::Migration
  def change
    create_table :backouts do |t|
      t.string :month, :name, :unit
      t.integer :amount
      t.timestamps
    end
  end
end
