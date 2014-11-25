class AddAmount1ToBackouts < ActiveRecord::Migration
  def change
    add_column :backouts, :amount1, :integer
    add_column :backouts, :amount2, :integer
    add_column :backouts, :amount3, :integer
    add_column :backouts, :amount4, :integer
    add_column :backouts, :amount5, :integer
    add_column :backouts, :amount6, :integer
    add_column :backouts, :amount7, :integer
    add_column :backouts, :amount8, :integer
    add_column :backouts, :amount9, :integer
    add_column :backouts, :amount10, :integer
  end
end
