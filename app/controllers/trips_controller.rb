class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :update, :destroy, :reject_trip]
  before_action :authenticate

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

  def reject_trip
    # user = User.find(params[:user_id])
    # latest_trip = user.trips.last
    # @trip = Trip.find(params[:id])
    @trip.completion = params[:completion]
    @trip.save
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(user_id: params[:user_id], trip_name: params[:trip_name], distance: params[:distance], walked_at: Time.now)
    @origin = Place.new(user_id: params[:user_id], place_name: params[:origin_name], latitude: params[:origin_lat], longitude: params[:origin_long])
    @destination = Place.new(user_id: params[:user_id], place_name: params[:dest_name], latitude: params[:dest_lat], longitude: params[:dest_long])
    if @trip.save && @origin.save && @destination.save
      @origin_point = TripPoint.new(trip_id: @trip.id, place_id: @origin.id, place_type: "Origin")
      @destination_point = TripPoint.new(trip_id: @trip.id, place_id: @destination.id, place_type: "Destination")
      @origin_point.save
      @destination_point.save
    else
      render :json => {:success => false, :errors => ["Trip creation failed."]}
    end
  end

  def destination_generator(max_distance = 2.0, origin_lat, origin_long)
    range = ((max_distance/3)..max_distance)
    suggestion = Place.in_range((1..3), :origin => [origin_lat, origin_long]).joins(:trip_points).where("place_type = 'Destination'")
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    @trip = Trip.find(params[:id])

    if @trip.update(trip_params)
      render :json => {:success => true}
    else
      render :json => {:success => false, :errors => ["Trip update failed."]}
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    if @trip.destroy
      render :json => {:success => true}
    else
      render :json => {:success => false, :errors => ["Delete failed."]}
    end
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
