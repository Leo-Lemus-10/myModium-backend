class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        new_user = User.create!(new_user_params)
        render json: new_user, status: :created
        rescue ActiveRecord::RecordInvalid => e
            render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    def update
        user = User.find(params[:id])
        user.update(update_user_params)
        render json: user
    end
    
    private

    def render_not_found_response
        render json: {error: "User not found"}, status: :render_not_found_response
    end

    def new_user_params
        params.permit(:username)
    end

    def update_user_params
        params.permit(:prof_pic, :bio, :liked_media, :platforms, :categories, :genres)
    end

end
