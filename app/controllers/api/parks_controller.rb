class Api::ParksController < ApplicationController

  def index
    @parks = HTTP.headers({"X-Api-Key" => Rails.application.credentials.parks_api[:api_key]}).get("https://developer.nps.gov/api/v1/parks")
    render "index.json.jb"
  end

end
