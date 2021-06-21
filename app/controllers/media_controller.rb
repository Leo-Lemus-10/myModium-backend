class MediaController < ApplicationController

    def index
        medias = Media.all
        render json: medias
    end

    def show
        media = Media.find(params[:id])
        render json: media
    end
end
