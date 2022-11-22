require "application_system_test_case"

class FlightsTest < ApplicationSystemTestCase
  setup do
    @flight = flights(:one)
  end

  test "visiting the index" do
    visit flights_url
    assert_selector "h1", text: "Flights"
  end

  test "should create flight" do
    visit flights_url
    click_on "New flight"

    fill_in "Arrival iata", with: @flight.arrival_iata
    fill_in "Arrival icao", with: @flight.arrival_icao
    fill_in "Arrival time", with: @flight.arrival_time
    fill_in "Departure iata", with: @flight.departure_iata
    fill_in "Departure icao", with: @flight.departure_icao
    fill_in "Departure time", with: @flight.departure_time
    fill_in "Destination", with: @flight.destination
    fill_in "Flight date", with: @flight.flight_date
    fill_in "Price", with: @flight.price
    fill_in "Ticket", with: @flight.ticket_id
    check "Vaccancy" if @flight.vaccancy
    click_on "Create Flight"

    assert_text "Flight was successfully created"
    click_on "Back"
  end

  test "should update Flight" do
    visit flight_url(@flight)
    click_on "Edit this flight", match: :first

    fill_in "Arrival iata", with: @flight.arrival_iata
    fill_in "Arrival icao", with: @flight.arrival_icao
    fill_in "Arrival time", with: @flight.arrival_time
    fill_in "Departure iata", with: @flight.departure_iata
    fill_in "Departure icao", with: @flight.departure_icao
    fill_in "Departure time", with: @flight.departure_time
    fill_in "Destination", with: @flight.destination
    fill_in "Flight date", with: @flight.flight_date
    fill_in "Price", with: @flight.price
    fill_in "Ticket", with: @flight.ticket_id
    check "Vaccancy" if @flight.vaccancy
    click_on "Update Flight"

    assert_text "Flight was successfully updated"
    click_on "Back"
  end

  test "should destroy Flight" do
    visit flight_url(@flight)
    click_on "Destroy this flight", match: :first

    assert_text "Flight was successfully destroyed"
  end
end
