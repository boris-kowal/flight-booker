class PassengerMailer < ApplicationMailer

  def thank_you_email
    @booking = params[:booking]
    @passengers = @booking.passengers
    @url = 'localhost:3000/'
    @passengers.each do |passenger|
      mail(to: passenger.email, subject: 'Thank you for your booking')
    end
  end
end
