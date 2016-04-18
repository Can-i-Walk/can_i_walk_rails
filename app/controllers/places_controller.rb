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
    distance = params[:distance]
    origin_lat = params[:origin_lat]
    origin_long = params[:origin_long]
    dest_lat = params[:dest_lat]
    dest_long = params[:dest_long]

    sw_point = [origin_lat, origin_long]
    ne_point = [dest_lat, dest_long]

    @rated_places = []
    favorite_nearby_places = []
    all_comments = []
    radius = 0.25
    mid_radius = distance.to_f/4

    # @alert = Alert.new(params[:dest_lat], params[:dest_long])
    # @astronomy = Astronomy.new(params[:dest_lat], params[:dest_long])
    # @condition = Condition.new(params[:dest_lat], params[:dest_long])
    # @hourly = Hourly.new(params[:dest_lat], params[:dest_long])

    @ease_average = Rating.ease_average(dest_lat, dest_long)
    @enjoyability_average = Rating.enjoyability_average(dest_lat, dest_long)
    @safety_average = Rating.safety_average(dest_lat, dest_long)
    @accessibility_average = Rating.accessibility_average(dest_lat, dest_long)
    @cane_average = Rating.average_cane(dest_lat, dest_long)
    @wheelchair_average = Rating.average_wheelchair(dest_lat, dest_long)
    @walker_average = Rating.average_walker(dest_lat, dest_long)
    @scooter_average = Rating.average_scooter(dest_lat, dest_long)

    # midpoints = Place.midpoints(mid_radius, origin_lat, origin_long, dest_lat, dest_long)
    # nearby_origin = Place.nearby_places(radius, origin_lat, origin_long)
    # nearby_destination = Place.nearby_places(radius, dest_lat, dest_long)

    nearby_places = Place.nearby_places(sw_point, ne_point)

    nearby_destination.each do |n|
      @rated_places << n if n.trip_points.where(place_type: "Destination").first
    end

    @rated_places.each do |place|
      place.ratings.each do |r|
        all_comments << r.comment
      end
    end

    @comments = all_comments.shuffle.take(5)

    # nearby_origin.each do |place|
    #   favorite_nearby_places << place if place.trip_points.where(place_type: "Favorite").first
    # end
    #
    # nearby_destination.each do |place|
    #   favorite_nearby_places << place if place.trip_points.where(place_type: "Favorite").first
    # end
    #
    # midpoints.each do |place|
    #   favorite_nearby_places << place if place.trip_points.where(place_type: "Favorite").first
    # end

    nearby_places.each do |place|
      favorite_nearby_places << place if place.trip_points.where(place_type: "Favorite").first
    end

    @favorite_nearby_places = favorite_nearby_places.uniq
  end

  def places_of_interest
    distance = params[:distance]
    origin_lat = params[:origin_lat]
    origin_long = params[:origin_long]
    dest_lat = params[:dest_lat]
    dest_long = params[:dest_long]

    favorite_nearby_places = []
    radius = 0.25
    mid_radius = distance.to_f/4

    midpoints = Place.midpoints(mid_radius, origin_lat, origin_long, dest_lat, dest_long)
    nearby_origin = Place.nearby_places(radius, origin_lat, origin_long)
    nearby_destination = Place.nearby_places(radius, dest_lat, dest_long)

    nearby_origin.each do |place|
      favorite_nearby_places << place if place.trip_points.where(place_type: "Favorite").first
    end

    nearby_destination.each do |place|
      favorite_nearby_places << place if place.trip_points.where(place_type: "Favorite").first
    end

    midpoints.each do |place|
      favorite_nearby_places << place if place.trip_points.where(place_type: "Favorite").first
    end

    @favorite_nearby_places = favorite_nearby_places.uniq
  end

  # POST /places
  # POST /places.json
  def create
    @place = Place.new(user_id: params[:user_id], place_name: params[:place_name], latitude: params[:latitude], longitude: params[:longitude])

    if @place.save
      @trip_point = TripPoint.new(trip_id: params[:trip_id], place_id: @place.id, place_type: "Favorite")
      @trip_point.save!
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
