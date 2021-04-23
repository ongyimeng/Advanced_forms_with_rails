class PassengerMailer < ApplicationMailer
    
    def thank_you_email
        @booking=Booking.find(params[:booking_id])

        mail(to: @booking.passengers.pluck(:email), subject: "Thank you for flying with us" )
    end
end
