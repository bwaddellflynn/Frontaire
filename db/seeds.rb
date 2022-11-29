# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# AdminUser.create!(email: 'admin@frontaire.com', password: 'totallytubular', password_confirmation: 'totallytubular') if Rails.env.development?

require 'faker'
require 'csv'

=begin
10.times do
  travelguide = Travelguide.create(
    blog_title: Faker::Nation.capital_city,
    blog_desc: Faker::Lorem.sentence(word_count: 20)
  )
end
=end

csv_text = File.read(Rails.root.join('lib', 'assets', 'iata_codes.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'utf-8')
csv.each do |row|
  departure_iata = DepartureIata.create(
    code:row['Code'],
    location:row['Location'],
    country:row['Country']
  )
  arrival_iata = ArrivalIata.create(
    code:row['Code'],
    location:row['Location'],
    country:row['Country']
  )
end

100.times do
  flight = Flight.create(

    offsetDeparture = rand(DepartureIata.count)
    offsetArrival = rand(ArrivalIata.count)
    departure = rand(DepartureIata.count)
    arrival = rand(ArrivalIata.count)
    departureDate = Faker::Date.between(from: '2023-01-01', to: '2023-01-05')
    arrivalDate = Faker::Date.forward(days: 3)

    destination: arrival.location,
    flight_date: departureDate,
    departure_time:Faker::Time.between_dates(from: departureDate - 1, to: departureDate, period: :all),
    arrival_time: Faker::Time.between_dates(from: arrivalDate - 1, to: arrivalDate, period: :all),
    departure_iata: depature,
    arrival_iata: arrival,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3)
    vaccancy: true;
  )
end