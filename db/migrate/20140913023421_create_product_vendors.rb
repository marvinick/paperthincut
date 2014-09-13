class CreateProductVendors < ActiveRecord::Migration
  def change
    create_table :product_vendors do |t|
      t.integer :vendor_id, :product_id
      t.timestamps
    end
  end
end
