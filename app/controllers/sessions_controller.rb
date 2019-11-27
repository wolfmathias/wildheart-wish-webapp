class SessionsController < ApplicationController
    helper_method :current_user

    def new
    end

    def create # login and set user session
        # find user with params and set session[:user_id]
        # send to show page if no errors
        # redirect if errors
        
        user = User.find_by(email: login_params[:email])
        if user && user.authenticate(login_params[:password])
            set_user
            redirect_to user_path(user)
        else
            render 'new'
        end
    end

    def destroy
        session.delete(:user_id)
    end
    
    def current_user
        @user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
        !!current_user
    end

    def set_user
        # where to check for user type? Separate controllers for different user types?
        @user = User.find_by(user_params)
    end

    def login_params
        params.permit(
            :authenticity_token,    
            :email, 
            :password,
            :commit
            )
    end

end