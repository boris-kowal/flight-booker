class BookingsController < ApplicationController

  def index
  end

  def new
    @booking = Booking.new
    params[:number_pax].to_i.times { @booking.passengers.build }
  end

  def create
    @passenger = Passenger.new(passenger_params)
  end

  def show
  end

end
