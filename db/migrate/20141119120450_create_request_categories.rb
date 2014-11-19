class CreateRequestCategories < ActiveRecord::Migration
  def change
    create_table :request_categories do |t|
      t.integer :request_id, :good_id
      t.timestamps
    end
  end
end
