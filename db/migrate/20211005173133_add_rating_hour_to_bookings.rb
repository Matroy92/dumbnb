class AddRatingHourToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :from_hour, :time
    add_column :bookings, :to_hour, :time
    add_column :bookings, :rating, :integer
  end
end
