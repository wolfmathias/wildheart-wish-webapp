module KeepersHelper

    private

    def keeper_params
        params.require(:keeper).permit(:first_name, :last_name, :email, :password, :password_confirmation, animals_attributes: [:name, :species, :bio, toy_ids: []])
    end
    
end
