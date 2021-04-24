class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |u| [u.name, u.id] }
    @flight_date = Flight.get_date
    @flight = Flight.new
    unless params[:flight].nil?
      @available_flights = []
      Flight.all.each do |flight|
        if helpers.compare_flights(flight)
          @available_flights.push(flight)
        else
          next
        end
      end
    end
  end

  def new; end

  def create; end

  def show; end
end
