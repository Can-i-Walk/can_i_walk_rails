class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all

    render json: @trips
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    render json: @trip
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(user_id: params[:user_id], trip_name: params[:trip_name], distance: params[:distance], walked_at: Time.now)
    @origin = Place.new(user_id: params[:user_id], place_name: params[:origin_name], latitude: params[:origin_lat], longitude: params[:origin_long])
    @destination = Place.new(user_id: params[:user_id], place_name: params[:dest_name], latitude: params[:dest_lat], longitude: params[:dest_long])
    if @trip.save && @origin.save && @destination.save
      @origin_point = TripPoint.new(trip_id: @trip.id, place_id: @origin.id, place_type: "Starting")
      @destination_point = TripPoint.new(trip_id: @trip.id, place_id: @destination.id, place_type: "Ending")
      @origin_point.save
      @destination_point.save
      redirect_to controller: 'places', action: 'nearby_favorite_places', distance: params[:distance], origin_lat: params[:origin_lat], origin_long: params[:origin_long], dest_lat: params[:dest_lat], dest_long: params[:dest_long]
      # render json: @trip, status: :created, location: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    @trip = Trip.find(params[:id])

    if @trip.update(trip_params)
      head :no_content
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:user_id, :trip_name, :walked_at, :planned_at, :distance, :completion)
    end
end
