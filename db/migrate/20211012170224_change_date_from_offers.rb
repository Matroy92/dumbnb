class ChangeDateFromOffers < ActiveRecord::Migration[6.0]
    def change
      change_column :offers, :availability_start_date, :datetime
      change_column :offers, :availability_end_date, :datetime
      remove_column :offers, :availability_start_hour, :time
      remove_column :offers, :availability_end_hour, :time
    end
end
