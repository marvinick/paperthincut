class AddAmountToItems < ActiveRecord::Migration
  def change
    add_column :items, :amount, :integer, default: 1
  end
end
