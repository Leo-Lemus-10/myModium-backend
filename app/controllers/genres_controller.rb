class GenresController < ApplicationController

    def index
        genres = Genre.all
        render json: genres
    end

    def show
        genre = Gengre.find(params[:id])
        render json: genre
    end
end
