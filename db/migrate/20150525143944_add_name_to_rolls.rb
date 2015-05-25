class AddNameToRolls < ActiveRecord::Migration
  def change
    add_column :rolls, :name, :string
  end
end
