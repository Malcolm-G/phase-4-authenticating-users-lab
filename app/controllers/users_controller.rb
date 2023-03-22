class UsersController < ApplicationController

    def show
        user = User.find_by(id:session[:user_id])
        if user
            render json: user
        else
            render json: {message:'No user found'}, status:401
        end
    end
end
