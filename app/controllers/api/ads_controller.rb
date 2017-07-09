module API
  class AdsController < ApplicationController
    def index
      ads = Ad.all
      render json: ads
    end

    def upload
      # upload with carrierwave
      # it already has the client ready with correct bucket
      file = params[:file]
    end
  end
end
