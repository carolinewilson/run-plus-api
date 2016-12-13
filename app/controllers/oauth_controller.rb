class OauthController < ApplicationController
  skip_before_action :authenticate_user!

  def strava
    request = HTTParty.post('https://www.strava.com/oauth/token', {
      body: {
        client_id: params[:clientId],
        code: params[:code],
        client_secret: ENV['STRAVA_API_SECRET']
      }
    })

    render json: request.parsed_response, status: request.code
  end

end
