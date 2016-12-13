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
end
