class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.text :day
      t.text :hour

      t.timestamps null: false
    end
  end
end
