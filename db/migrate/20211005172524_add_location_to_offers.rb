class AddLocationToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :country, :string
    add_column :offers, :city, :string
    add_column :offers, :radius, :integer
  end
end
