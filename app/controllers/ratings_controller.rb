class RatingsController < ApplicationController
  before_action :set_rating, only: [:show, :update, :destroy]
  before_action :authenticate

  # GET /ratings
  # GET /ratings.json
  def index
    @ratings = Rating.all

    render json: @ratings
  end

  # GET /ratings/1
  # GET /ratings/1.json
  def show
    render json: @rating
  end

  # POST /ratings
  # POST /ratings.json
  def create
    place_id = Trip.find(params[:trip_id]).trip_points.where(place_type: "Ending Point").last.place.id
    @rating = Rating.new(user_id: params[:user_id], place_id: place_id, ease_rating: params[:ease_rating], safety_rating: params[:safety_rating], enjoyability_rating: params[:enjoyability_rating], accessibility_rating: params[:accessibility_rating], comment: params[:comment])
    if @rating.save
      render :json => {:success => true}
    else
      render :json => {:success => false, :errors => ["Rating creation failed."]}
    end
  end

  # PATCH/PUT /ratings/1
  # PATCH/PUT /ratings/1.json
  def update
    @rating = Rating.find(params[:id])

    if @rating.update(rating_params)
      render :json => {:success => true}
    else
      render :json => {:success => false, :errors => ["Rating update failed."]}
    end
  end

  # DELETE /ratings/1
  # DELETE /ratings/1.json
  def destroy
    if @rating.destroy
      render :json => {:success => true, :errors => ["Delete successful."]}
    else
      render :json => {:success => false, :errors => ["Delete failed."]}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rating
      @rating = Rating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rating_params
      params.require(:rating).permit(:user_id, :place_id, :ease_rating, :safety_rating, :enjoyability_rating, :accessibility_rating, :comment)
    end
end
