class KeepersController < ApplicationController

    def new
        @keeper = Keeper.new
        @keeper.animals.build
    end

    def create
        @keeper = Keeper.new(keeper_params)
        if @keeper.save
            redirect_to keeper_path(@keeper)
        else
            render 'keepers/new'
        end
    end

    def show
        @keeper = Keeper.find_by(params[:id])
    end

    def edit
        @keeper = Keeper.find_by(params[:id])
    end

    def update
        Keeper.update(keeper_params)
    end

    def destroy
    end

    

end
