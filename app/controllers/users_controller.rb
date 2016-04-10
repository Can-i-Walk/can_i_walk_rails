class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy, :dashboard]

  def index
    @users = User.all
  end

  def dashboard
    # favorite_places = Place.joins("LEFT OUTER JOIN trip_points ON trip_points.place_id = places.id").where("trip_points.place_type IS 'Favorite Places'")
    # @user_favorites = favorite_places.where(user_id: @user.id)
    @user_favorites = @user.favorite_places
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      confirm_token = @user.confirm_token
      RegistrationConfirmationJob.perform_later(@user.email, confirm_token)
    else
      flash[:error] = "Email already taken."
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:token, :email, :password, :password_confirmation, :name, :max_distance, :email_confirmed, :confirm_token)
    end
end
