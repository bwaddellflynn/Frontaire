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
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  puts row.to_hash
end



=begin
do
  flight = Flight.new(
    destination:
    flight_date:
    departure_time:arr_scheduled_time_arr
    arrival_time:arr_scheduled_time_dep
    departure_iata:dep_iata
    arrival_iata:arr_iata
    price:
    vaccancy:
  )
  flight.save!
=end