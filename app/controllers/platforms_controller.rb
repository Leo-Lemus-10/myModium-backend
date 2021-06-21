class PlatformsController < ApplicationController

    def index
        platforms = Platform.all
        render json: platforms
    end

    def show
        platform = Platform.find(params[:id])
        render json: platform
    end
end
