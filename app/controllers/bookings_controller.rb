class BookingsController < ApplicationController
    def new
        @result_flight_id=params[:result_flight_id]
        @result_flight=Flight.find_by(id: @result_flight_id )
        @pax=params[:pax].to_i

        @booking=Booking.new
        @pax.times{@booking.passengers.build}
    end

    def create
        @booking=Booking.new(booking_params)
        if @booking.save
            PassengerMailer.with(booking_id: @booking.id).thank_you_email.deliver_now
            redirect_to booking_path(@booking)
        else
            render :new
        end
    end

    def show
        @booking=Booking.find_by(id: params[:id])
    end

    private
    
    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end
end
