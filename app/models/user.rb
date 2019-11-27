class User < ApplicationRecord
    # model being built to encompass all user instead of separate models
    has_secure_password
    enum role: {donor: 0, keeper: 1, admin: 2} # set role by calling self.donor!, self.keeper!, self.admin

    # set default role to donor
    after_initialize do
        if self.new_record?
            self.role ||= :donor 
        end
    end


    

end
