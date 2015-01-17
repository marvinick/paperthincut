class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :event
      t.text :description
      t.timestamps
    end
  end
end
