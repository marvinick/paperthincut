class AddPeriodToInventories < ActiveRecord::Migration
  def change
    add_column :inventories, :period, :string
  end
end
