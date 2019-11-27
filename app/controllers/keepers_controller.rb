class KeepersController < ApplicationController

    def new
        @user = User.new(role: :keeper)
        @user.animals.build
    end

    def create
        @user = User.new(keeper_params)
        if @user.save
            redirect_to keeper_path(@user)
        else
            render 'keepers/new'
        end
    end

    def show
        @user = User.find_by(params[:id])
    end

    def edit
        @user = User.find_by(params[:id])
    end

    def update
        User.update(keeper_params)
    end

    def destroy
    end

    

end
