class FlightsController < ApplicationController
  before_action :set_flight, only: %i[ show edit update destroy ]
  before_action :initialize_session
  before_action :load_cart


  # GET /flights or /flights.json
  def index
    @flights = Flight
      .all
      .page(params[:page])
  end

  # GET /flights/1 or /flights/1.json
  def show
  end

  # GET /flights/new
  def new
    @flight = Flight.new
  end

  # GET /flights/1/edit
  def edit
  end

  # POST /flights or /flights.json
  def create
    @flight = Flight.new(flight_params)

    respond_to do |format|
      if @flight.save
        format.html { redirect_to flight_url(@flight), notice: "Flight was successfully created." }
        format.json { render :show, status: :created, location: @flight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights/1 or /flights/1.json
  def update
    respond_to do |format|
      if @flight.update(flight_params)
        format.html { redirect_to flight_url(@flight), notice: "Flight was successfully updated." }
        format.json { render :show, status: :ok, location: @flight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1 or /flights/1.json
  def destroy
    @flight.destroy

    respond_to do |format|
      format.html { redirect_to flights_url, notice: "Flight was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to flights_path
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete_at(session[:cart].index(id))
    redirect_to flights_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_params
      params.require(:flight).permit(:ticket_id, :destination, :flight_date, :departure_time, :arrival_time, :departure_iata, :arrival_iata, :departure_icao, :arrival_icao, :price, :vaccancy)
    end

    def initialize_session
      session[:cart] ||= []
    end

    def load_cart
      @cart = Flight.find(session[:cart])
    end
end
