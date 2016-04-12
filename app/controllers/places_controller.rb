class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :update, :destroy]

  # GET /places
  # GET /places.json
  def index
    @places = Place.all
  end

  # GET /places/1
  # GET /places/1.json


  # def weather
  #   @weather = WeatherInfo.new(params[:latitude], params[:longitude])
  # end

  def map_info
    # @distance = (params[:distance])
    # @weather_info = WeatherInfo.new(params[:dest_lat], params[:dest_long])
    @alert = Alert.new(params[:dest_lat], params[:dest_long])
    @astronomy = Astronomy.new(params[:dest_lat], params[:dest_long])
    @condition = Condition.new(params[:dest_lat], params[:dest_long])
    @hourly = Hourly.new(params[:dest_lat], params[:dest_long])
    @rated_places = []
    @favorite_nearby_places = []
    nearby_origin = Place.within(0.25, :origin => [params[:origin_lat], params[:origin_long]])
    nearby_destination = Place.within(0.25, :origin => [params[:dest_lat], params[:dest_long]])
    # nearby_origin = nearby_origin.group(:place_name)
    # nearby_destination = nearby_destination.group(:place_name)

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
    @favorite_nearby_places = []
    nearby_origin = Place.within(0.25, :origin => [params[:origin_lat], params[:origin_long]])
    nearby_destination = Place.within(0.25, :origin => [params[:dest_lat], params[:dest_long]])
    # nearby_origin = nearby_origin.group(:place_name)
    # nearby_destination = nearby_destination.group(:place_name)

    nearby_origin.each do |n|
      @favorite_nearby_places << n if n.trip_points.where(place_type: "Favorite Places").first
    end

    nearby_destination.each do |n|
      @favorite_nearby_places << n if n.trip_points.where(place_type: "Favorite Places").first
    end
  end

  def show
    render json: @place
  end

  # POST /places
  # POST /places.json
  def create
    @place = Place.new(place_params)

    if @place.save
      render :show, status: :created, location: @place
    else
      render json: @place.errors, status: :unprocessable_entity
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
