class Passenger < ApplicationRecord
    has_many :bookings
    has_many :passenger_bookings
    has_many :flights, through: :passenger_bookings
    
end
