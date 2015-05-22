class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :week
      t.string :month
      t.integer :amount
      t.timestamps
    end
  end
end
