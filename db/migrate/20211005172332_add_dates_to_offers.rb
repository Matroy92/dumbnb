class AddDatesToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :availability_start_date, :date
    add_column :offers, :availability_end_date, :date
    add_column :offers, :availability_start_hour, :time
    add_column :offers, :availability_end_hour, :time
  end
end
