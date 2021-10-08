class AddSmallDescriptionToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :small_description, :string
  end
end
