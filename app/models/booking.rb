class Booking < ApplicationRecord
    belongs_to :user, :offer
end
