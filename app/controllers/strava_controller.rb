require 'google_maps_service'

class StravaController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    access_token = "Bearer #{params[:accessToken]}"

    request = HTTParty.get('https://www.strava.com/api/v3/athlete/activities', {
      headers: {
        "Authorization" => access_token
      }
    })

    # Decode polyline
    request.parsed_response.each do |activity|

      encoded_path = activity["map"]["summary_polyline"]

      unless encoded_path == nil
        activity["map"]["summary_polyline"] = GoogleMapsService::Polyline.decode(encoded_path)
      end
    end

    render json: request.parsed_response, status: request.code
  end

  def show
    access_token = "Bearer #{params[:accessToken]}"

    request = HTTParty.get("https://www.strava.com/api/v3/activities/#{params[:activityId]}", {
      headers: {
        "Authorization" => access_token
      }
    })

    encoded_path = request.parsed_response["map"]["polyline"]

    # Decode polyline
    # encoded_path = encodedPolyline

    request.parsed_response["map"]["polyline"] = GoogleMapsService::Polyline.decode(encoded_path)

    render json: request.parsed_response, status: request.code
  end
end
