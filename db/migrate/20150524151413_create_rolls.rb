class CreateRolls < ActiveRecord::Migration
  def change
    create_table :rolls do |t|
      t.integer :flavor
      t.integer :texture
      t.boolean :gluten
      t.integer :healthy
      t.integer :visual
      t.timestamps
    end
  end
end
