class KeepersController < ApplicationController

    def new
        @keeper = Keeper.new
        @keeper.animals.build
    end

    def create
        @keeper = Keeper.create(keeper_params)
        redirect_to keeper_path(@keeper)
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

    private

    def keeper_params
        params.require(:keeper).permit(:first_name, :last_name, :email, :password, :password_confirmation, animals_attributes: [:name, :species, :bio, toy_ids: []])
    end

end
