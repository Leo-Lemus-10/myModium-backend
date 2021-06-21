class CategoriesController < ApplicationController

    def index
        catagories = Catagory.all
        render json: catagories
    end

    def show
        catagory = Catagory.find(params[:id])
        render json: catagory
    end
end
