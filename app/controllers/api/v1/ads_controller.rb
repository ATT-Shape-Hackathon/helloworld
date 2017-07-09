module API
  module V1
    class AdsController < ApplicationController
      def index
        render json: 'text'
      end
    end
  end
end
