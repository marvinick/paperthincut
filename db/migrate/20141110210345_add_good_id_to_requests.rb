class AddGoodIdToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :good_id, :integer
  end
end
