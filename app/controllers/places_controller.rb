class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :update, :destroy]
  before_action :authenticate

  # GET /places
  # GET /places.json
  def index
    @places = Place.all
  end

  # GET /places/1
  # GET /places/1.json
  def show
    render json: @place
  end

  def map_info
    origin_lat = params[:origin_lat]
    origin_long = params[:origin_long]
    dest_lat = params[:dest_lat]
    dest_long = params[:dest_long]

    # @alert = Alert.new(dest_lat, dest_long)
    # @astronomy = Astronomy.new(dest_lat, dest_long)
    # @condition = Condition.new(dest_lat, dest_long)
    # @hourly = Hourly.new(dest_lat, dest_long)

    @rated_places = []
    @favorite_nearby_places = []

    @ease_average = Rating.ease_average(dest_lat, dest_long)
    @enjoyability_average = Rating.enjoyability_average(dest_lat, dest_long)
    @safety_average = Rating.safety_average(dest_lat, dest_long)
    @accessibility_average = Rating.accessibility_average(dest_lat, dest_long)
    @cane_average = Rating.average_cane(dest_lat, dest_long)
    @wheelchair_average = Rating.average_wheelchair(dest_lat, dest_long)
    @walker_average = Rating.average_walker(dest_lat, dest_long)
    @scooter_average = Rating.average_scooter(dest_lat, dest_long)


    nearby_origin = Place.within(0.25, :origin => [origin_lat, origin_long])
    nearby_destination = Place.within(0.25, :origin => [dest_lat, dest_long])

    nearby_destination.each do |n|
      @rated_places << n if n.trip_points.where(place_type: "Ending Point").first
    end

    nearby_origin.each do |n|
      @favorite_nearby_places << n if n.trip_points.where(place_type: "Favorite Places").first
    end

    nearby_destination.each do |n|
      @favorite_nearby_places << n if n.trip_points.where(place_type: "Favorite Places").first
    end
  end

  def places_of_interest
    origin_lat = params[:origin_lat]
    origin_long = params[:origin_long]
    dest_lat = params[:dest_lat]
    dest_long = params[:dest_long]

    @favorite_nearby_places = []

    nearby_origin = Place.within(0.25, :origin => [origin_lat, origin_long])
    nearby_destination = Place.within(0.25, :origin => [dest_lat, dest_long])

    nearby_origin.each do |n|
      @favorite_nearby_places << n if n.trip_points.where(place_type: "Favorite Places").first
    end

    nearby_destination.each do |n|
      @favorite_nearby_places << n if n.trip_points.where(place_type: "Favorite Places").first
    end
  end

  # POST /places
  # POST /places.json
  def create
    @place = Place.new(user_id: params[:user_id], place_name: params[:place_name], latitude: params[:latitude], longitude: params[:longitude])

    if @place.save
      @trip_point = TripPoint.new(trip_id: params[:trip_id], place_id: @place.id, place_type: "Favorite Places")
      render :json => {:success => true}
    else
      render :json => {:success => false, :errors => ["Creation failed."]}
    end
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
    @place = Place.find(params[:id])

    if @place.update(place_params)
      render :json => {:success => true}
    else
      render :json => {:success => false, :errors => ["Update failed."]}
      # render json: @place.errors, status: :unprocessable_entity
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    if @place.destroy
      render :json => {:success => true}
    else
      render :json => {:success => false, :errors => ["Delete failed."]}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.require(:place).permit(:latitude, :longitude, :place_name)
    end
end
