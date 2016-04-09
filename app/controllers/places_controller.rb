class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :update, :destroy]

  # GET /places
  # GET /places.json
  def index
    @places = Place.all

    render json: @places
  end

  # GET /places/1
  # GET /places/1.json

  def nearby_favorite_places
    nearby_places = Place.within(0.25, :origin => [35.992892, -78.904498])
    favorite_nearby_places = []
    nearby_places.each do |f|
      if f.trip_points.where(place_type: "Favorite Places").first
        favorite_nearby_places << f
      end
    end
    @favorite_nearby_places = favorite_nearby_places
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
      head :no_content
    else
      render json: @place.errors, status: :unprocessable_entity
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @place.destroy

    head :no_content
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
