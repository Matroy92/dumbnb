class RemovePlaceDurationFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :place, :string
    remove_column :bookings, :duration, :integer
  end
end
