class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :chef, :costumer
      t.text :background
      t.timestamps
    end
  end
end
