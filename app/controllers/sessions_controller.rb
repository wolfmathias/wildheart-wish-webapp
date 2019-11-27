class SessionsController < ApplicationController

    def new
    end

    def create
        # find user with params and set session[:user_id]
        # send to show page if no errors
        # redirect if errors
    end
    
    def current_user
        
    end

    def logged_in?

    end

    def set_user
        @user = User.find_by(user_params)
    end

end