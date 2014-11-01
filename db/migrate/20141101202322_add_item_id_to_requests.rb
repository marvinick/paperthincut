class AddItemIdToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :item_id, :int
  end
end
