class Offer < ApplicationRecord
  geocoded_by :address
  belongs_to :user

  validates :description, :hour_rate, presence: true
  
  after_validation :geocode, if: :will_save_change_to_address?
  
end
