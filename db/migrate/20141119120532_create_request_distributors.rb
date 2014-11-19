class CreateRequestDistributors < ActiveRecord::Migration
  def change
    create_table :request_distributors do |t|
      t.integer :distributor_id, :request_id
      t.timestamps
    end
  end
end
