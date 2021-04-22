class FlightsController < ApplicationController
    def index
        @flight_from_options=Flight.all.map{|f| [f.from_airport.code,f.start_airport_id]}
        @flight_to_options=Flight.all.map{|f| [f.to_airport.code,f.finish_airport_id]}
        @flight_date_options=Flight.all.map{|f| [f.start_datetime.to_date,f.start_datetime.to_date]}

        
    end
end
