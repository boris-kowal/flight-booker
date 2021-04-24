module FlightsHelper
  def compare_flights(flight)
    if flight.date.day != Date.parse(params[:flight][:date]).day
      return false
    elsif flight.origin_id != params[:flight][:from].to_i
      return false
    elsif flight.destination_id != params[:flight][:to].to_i
      return false
    else
      return true
    end
  end

  def default_params(symbol)
    params[:flight][symbol] unless params[:flight].nil?
  end

end
