class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :month
      t.timestamps
    end
  end
end
