class SongsController < ApplicationController
  def index
    response = HTTP.get("https://tastedive.com/api-key=#{Rails.application.credentials.api_key}/similar?q=#{params[:search]}=&limit=25")
    render json: response.parse(:json)
  end
end