class BookingsController < ApplicationController

  def index
  end

  def new
    @flight_id = params[:flight_id]
    @booking = Booking.new
    params[:number_pax].to_i.times { @booking.passengers.build }
  end

  def create
    @flight_id = params[:flight_id]
    @booking = Booking.new(passenger_params)
    if @booking.save
      PassengerMailer.with(booking: @booking).thank_you_email.deliver_now
      redirect_to @booking
    else
      render :new
    end
  end

  def show
  @booking = Booking.find_by_id(params[:id])
  @passengers = @booking.passengers
  @flight = @booking.flight
  end
  
  private

  def passenger_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
