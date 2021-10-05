class Offer < ApplicationRecord
  belongs_to :user

  validates :description, :hour_rate, presence: true
end
