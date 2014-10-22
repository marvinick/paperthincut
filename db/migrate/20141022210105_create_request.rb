class CreateRequest < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name, :email
      t.text :additional
      t.timestamps
    end
  end
end
