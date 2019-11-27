class User < ApplicationRecord
    # model being built to encompass all user instead of separate models
    has_secure_password
    enum role: [:donor, :keeper, :admin] # set role by calling self.donor!, self.keeper!, self.admin!

    # set default role to donor
    after_initialize do
        if self.new_record?
            self.role ||= :donor 
        end
    end


    

end
