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
require 'securerandom'
require 'open-uri'

=begin
10.times do
  travelguide = Travelguide.create(
    blog_title: Faker::Nation.capital_city,
    blog_desc: Faker::Lorem.sentence(word_count: 20)
  )
end
=end

=begin
csv_text = File.read(Rails.root.join('lib', 'assets', 'iata_codes.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'utf-8')
csv.each do |row|
  departure_iata = DepartureIata.create[]
    code:row['Code'],
    location:row['Location'],
    country:row['Country']
  ]
  arrival_iata = ArrivalIata.create[
    code:row['Code'],
    location:row['Location'],
    country:row['Country']
  ]
end
=end

Product.destroy_all

1.times do
  departure = DepartureIata.all.sample
  arrival = ArrivalIata.all.sample
  departureDate = Faker::Date.between(from: '2023-01-01', to: '2023-01-05')
  #arrivalDate = departureDate + rand(2).days

  p = Product.create(destination: arrival.location,
                    flight_date: departureDate,
                    departure_time: Faker::Time.between_dates(from: departureDate, to: departureDate, period: :all),
                    departure_iata: departure.code,
                    arrival_iata: arrival.code,
                    price: Faker::Number.decimal(l_digits: 5))

  puts "Creating #{p.destination}"

  downloaded_image = open("https://source.unsplash.com/200x200/?#{p.destination}")
  p.image.attach(io: downloaded_image, filename: "m-#{p.destination}.jpg")
end