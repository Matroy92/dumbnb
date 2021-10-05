class RemoveRatingFromOffers < ActiveRecord::Migration[6.0]
  def change
    remove_column :offers, :rating, :integer
  end
end
