class AdddescriptionToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :small_description, :string
    change_column :bookings, :date, :datetime
  end
end
