class Offer < ApplicationRecord
  belongs_to :user

  validates :description, :hour_rate, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  
end
