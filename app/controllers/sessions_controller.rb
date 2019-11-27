class SessionsController < ApplicationController
    helper_method :current_user
    helper_method :logged_in?

    def new
    end

    def create # login and set user session
        
        # add verification errors to view when redirecting
        @user = User.find_by(email: login_params[:email])
        if set_user
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end

    def destroy
        session.delete(:user_id)
    end
    
    def current_user
        @user ||= User.find_by(id: session[:user_id]) # why am I using ||= instead of just = 
    end

    def logged_in?
        !!current_user
    end

    def set_user
        if @user && @user.authenticate(login_params[:password])
            session[:user_id] = @user.id
            current_user
        end
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