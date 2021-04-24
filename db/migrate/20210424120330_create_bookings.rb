class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :booking_number
      t.integer :passenger_id
      t.integer :flight_id

      t.timestamps
    end
  end
end
