class StravaController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    access_token = "Bearer #{params[:accessToken]}"

    request = HTTParty.get('https://www.strava.com/api/v3/athlete/activities', {
      headers: {
        "Authorization" => access_token
      }
    })

    render json: request.parsed_response, status: request.code
  end

  def show
    access_token = "Bearer #{params[:accessToken]}"

    request = HTTParty.get("https://www.strava.com/api/v3/activities/#{params[:activityId]}", {
      headers: {
        "Authorization" => access_token
      }
    })

    encodedPolyline = request.parsed_response["map"]["polyline"]

    require 'google_maps_service'

    # Decode polyline
    encoded_path = encodedPolyline

    request.parsed_response["map"]["polyline"] = GoogleMapsService::Polyline.decode(encoded_path)

    p request.parsed_response

    render json: request.parsed_response, status: request.code
  end
end
