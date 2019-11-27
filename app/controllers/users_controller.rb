class UsersController < ApplicationController

    def new
    end

    def create
        @user = User.new(user_params)
        if @user.save?
            redirect_to user_path(@user)
        else
            render 'users/new'
        end
    end

    private

    def user_params 
        params.require(:user).permit( # ensure all keys from signup form are here
            :email,
            :password
        )
    end

end
