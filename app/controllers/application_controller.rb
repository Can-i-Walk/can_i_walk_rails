class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  before_filter :set_format

  def set_format
    request.format = 'json'
  end

  private def authenticate
    @active_token = SessionToken.find_by(token: params[:token])
    unless @active_token
      render json: "User must be logged in!"
    end
  end
end
