class Offer < ApplicationRecord
  geocoded_by :address
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :description, :hour_rate, presence: true

  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos
  acts_as_taggable_on :tags

  
end
