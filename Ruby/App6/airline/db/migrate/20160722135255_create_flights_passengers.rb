class CreateFlightsPassengers < ActiveRecord::Migration
  def change
    create_table :flights_passengers do |t|
      t.integer :flight_id
      t.integer :passenger_id

      t.timestamps null: false
    end
  end
end
