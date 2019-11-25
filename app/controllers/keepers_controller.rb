class KeepersController < ApplicationController

    def new
        @keeper = Keeper.new
        animal = @keeper.animals.build
        animal.wishes.build
    end

    def create
        raise params.inspect
        @keeper = Keeper.create(keeper_params)
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def keeper_params
        params.require(:keeper).permit(:first_name, :last_name, :email, :password, :animals_attributes)
    end

end
