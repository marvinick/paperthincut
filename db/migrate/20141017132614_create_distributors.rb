class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.string :name, :description
      t.timestamps
    end
  end
end
