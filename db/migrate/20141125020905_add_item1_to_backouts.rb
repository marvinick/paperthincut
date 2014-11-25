class AddItem1ToBackouts < ActiveRecord::Migration
  def change
    add_column :backouts, :item1, :string
    add_column :backouts, :item2, :string
    add_column :backouts, :item3, :string
    add_column :backouts, :item4, :string
    add_column :backouts, :item5, :string
    add_column :backouts, :item6, :string
    add_column :backouts, :item7, :string
    add_column :backouts, :item8, :string
    add_column :backouts, :item9, :string
    add_column :backouts, :item10, :string
  end
end
