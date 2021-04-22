class Flight < ApplicationRecord
    belongs_to :from_airport, class_name: "Airport", foreign_key: :start_airport_id
    belongs_to :to_airport, class_name: "Airport", foreign_key: :finish_airport_id

    has_many :bookings 
    has_many :passengers, through: :bookings

end
