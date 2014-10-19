class CreateGoodDistributors < ActiveRecord::Migration
  def change
    create_table :good_distributors do |t|
      t.integer :distributor_id, :good_id
      t.timestamps
    end
  end
end
