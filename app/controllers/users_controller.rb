class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def password_reset
    nil_user = "No email found."
    forgetful_user = User.find_by(email: params[:email])
    if forgetful_user
      link = params[:link]
      PasswordMailer.reset_link(forgetful_user.email, link).deliver_now
      render json: forgetful_user
    else
      render json: nil_user
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    render json: @user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      head :no_content
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
      params.require(:user).permit(:token, :email, :password, :password_confirmation, :name, :max_distance)
    end
end
