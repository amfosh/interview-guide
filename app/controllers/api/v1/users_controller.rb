class Api::V1::UsersController < ApplicationController

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: 200
        end
    end

    private

    def user_params
        params.require(:user).permit(:name)
    end
end
