class AddEmailToInventories < ActiveRecord::Migration
  def change
    add_column :inventories, :email, :string
  end
end
