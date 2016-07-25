class FlightsPassengersController < ApplicationController
  before_action :set_flights_passenger, only: [:show, :edit, :update, :destroy]

  # GET /flights_passengers
  # GET /flights_passengers.json
  def index
    @flights_passengers = FlightsPassenger.all
  end

  # GET /flights_passengers/1
  # GET /flights_passengers/1.json
  def show
  end

  # GET /flights_passengers/new
  def new
    @flights_passenger = FlightsPassenger.new
  end

  # GET /flights_passengers/1/edit
  def edit
  end

  # POST /flights_passengers
  # POST /flights_passengers.json
  def create
    @flights_passenger = FlightsPassenger.new(flights_passenger_params)

    respond_to do |format|
      if @flights_passenger.save
        format.html { redirect_to @flights_passenger, notice: 'Flights passenger was successfully created.' }
        format.json { render :show, status: :created, location: @flights_passenger }
      else
        format.html { render :new }
        format.json { render json: @flights_passenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights_passengers/1
  # PATCH/PUT /flights_passengers/1.json
  def update
    respond_to do |format|
      if @flights_passenger.update(flights_passenger_params)
        format.html { redirect_to @flights_passenger, notice: 'Flights passenger was successfully updated.' }
        format.json { render :show, status: :ok, location: @flights_passenger }
      else
        format.html { render :edit }
        format.json { render json: @flights_passenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights_passengers/1
  # DELETE /flights_passengers/1.json
  def destroy
    @flights_passenger.destroy
    respond_to do |format|
      format.html { redirect_to flights_passengers_url, notice: 'Flights passenger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flights_passenger
      @flights_passenger = FlightsPassenger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flights_passenger_params
      params.require(:flights_passenger).permit(:flight_id, :passenger_id)
    end
end
