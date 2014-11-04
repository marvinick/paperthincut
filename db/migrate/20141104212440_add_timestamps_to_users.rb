class AddTimestampsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :created_at, :integer
  end
end
