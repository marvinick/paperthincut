class AddMonthToInventories < ActiveRecord::Migration
  def change
    add_column :inventories, :month, :string
  end
end
