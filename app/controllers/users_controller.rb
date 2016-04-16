class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy, :dashboard]
  before_action :authenticate, except: [:create]

  def index
    @users = User.all
  end

  def dashboard
    @user_trips = @user.trips
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
      render :json => {:success => false, :errors => ["User creation failed."]}
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
    # if @user.update(name: params[:name], password: params[:password], email: params[:email], max_distance: params[:max_distance], accessibility_type: params[:accessibility_type])
      render :json => {:success => true}
    else
      render :json => {:success => false, :errors => ["Update failed."]}
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    if @user.destroy!
      render :json => {:success => true}
    else
      render :json => {:success => false, :errors => ["Delete failed."]}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
      @password = @user.password unless params[:password]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.fetch(:user, {}).permit(:email, :password, :password_confirmation, :name, :max_distance, :email_confirmed, :confirm_token, :accessibility_type)
    end
end
