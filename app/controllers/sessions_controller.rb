class SessionsController < ApplicationController
    helper_method :current_user

    def new
    end

    def create
        # find user with params and set session[:user_id]
        # send to show page if no errors
        # redirect if errors
    end

    def destroy
        session.delete(:user_id)
    end
    
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
        !!current_user
    end

    def set_user
        # where to check for user type? Separate controllers for different user types?
        @user = User.find_by(user_params)
    end

end