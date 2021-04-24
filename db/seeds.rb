# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
Airport.delete_all
Flight.delete_all

Airport.create!(id: 1, name: 'Dublin', code: 'DUB')
Airport.create!(id: 2, name: 'Stansted', code: 'STN')
Airport.create!(id: 3, name: 'Bergamo', code: 'BGY')
Airport.create!(id: 4, name: 'Charleroi', code: 'CRL')
Airport.create!(id: 5, name: 'Madrid', code: 'MAD')
Airport.create!(id: 6, name: 'Barcelone', code: 'BCN')
# airport[6] = Airport.create!(name: 'Manchester', code: 'MAN')
# airport[0] = Airport.create!(name: 'Alicante', code: 'ALC')
# airport[0] = Airport.create!(name: 'Wroclaw', code: 'WRO')
# airport[0] = Airport.create!(name: 'Modlin', code: 'WMI')
# airport[0] = Airport.create!(name: 'Berlin', code: 'BER')
# airport[0] = Airport.create!(name: 'Beauvais', code: 'BVA')

for i in 23...30 do
  Flight.create!(origin_id: 1, destination_id: 2, date: DateTime.new(2021,4,i,6), duration: 1)
  Flight.create!(origin_id: 1, destination_id: 2, date: DateTime.new(2021,4,i,12), duration: 1)
  Flight.create!(origin_id: 1, destination_id: 2, date: DateTime.new(2021,4,i,18), duration: 1)
end

for i in 23...30 do
  Flight.create!(origin_id: 2, destination_id: 1, date: DateTime.new(2021,4,i, 8), duration: 1)
  Flight.create!(origin_id: 2, destination_id: 1, date: DateTime.new(2021,4,i,14), duration: 1)
  Flight.create!(origin_id: 2, destination_id: 1, date: DateTime.new(2021,4,i,20), duration: 1)
end

for i in 23...30 do
  Flight.create!(origin_id: 1, destination_id: 3, date: DateTime.new(2021,4,i,6), duration: 1)
  Flight.create!(origin_id: 1, destination_id: 3, date: DateTime.new(2021,4,i,12), duration: 1)
  Flight.create!(origin_id: 1, destination_id: 3, date: DateTime.new(2021,4,i,18), duration: 1)
end

for i in 23...30 do
  Flight.create!(origin_id: 2, destination_id: 3, date: DateTime.new(2021,4,i,6), duration: 1)
  Flight.create!(origin_id: 2, destination_id: 3, date: DateTime.new(2021,4,i,12), duration: 1)
  Flight.create!(origin_id: 2, destination_id: 3, date: DateTime.new(2021,4,i,18), duration: 1)
end

for i in 23...30 do
  Flight.create!(origin_id: 3, destination_id: 4, date: DateTime.new(2021,4,i,6), duration: 1)
  Flight.create!(origin_id: 3, destination_id: 4, date: DateTime.new(2021,4,i,12), duration: 1)
  Flight.create!(origin_id: 3, destination_id: 4, date: DateTime.new(2021,04,i,18), duration: 1)
end

for i in 23...30 do
  Flight.create!(origin_id: 4, destination_id: 5, date: DateTime.new(2021,4,i,06), duration: 1)
  Flight.create!(origin_id: 4, destination_id: 5, date: DateTime.new(2021,4,i,12), duration: 1)
  Flight.create!(origin_id: 4, destination_id: 5, date: DateTime.new(2021,4,i,18), duration: 1)
end

for i in 23...30 do
  Flight.create!(origin_id: 1, destination_id: 4, date: DateTime.new(2021,4,i,6), duration: 1)
  Flight.create!(origin_id: 1, destination_id: 4, date: DateTime.new(2021,4,i,12), duration: 1)
  Flight.create!(origin_id: 1, destination_id: 4, date: DateTime.new(2021,4,i,18), duration: 1)
end

for i in 23...30 do
  Flight.create!(origin_id: 1, destination_id: 5, date: DateTime.new(2021,4,i,6), duration: 1)
  Flight.create!(origin_id: 1, destination_id: 5, date: DateTime.new(2021,4,i,12), duration: 1)
  Flight.create!(origin_id: 1, destination_id: 5, date: DateTime.new(2021,4,i,18), duration: 1)
end
