class Flight < ApplicationRecord
  belongs_to :origin, class_name: "Airport"
  belongs_to :destination, class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings

  def self.get_date
    datetime = self.pluck(:date)
    dates = []
    datetime.each do |date|
      dates.push(date.to_date) unless dates.include?(date.to_date)
    end
    dates
  end
end
