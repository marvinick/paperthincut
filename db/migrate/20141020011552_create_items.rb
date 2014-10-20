class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :good, index: true
      t.belongs_to :basket, index: true

      t.timestamps
    end
  end
end
