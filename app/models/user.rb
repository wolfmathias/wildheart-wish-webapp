class User < ApplicationRecord
    # associations for keeper role
    has_many :animals
    has_many :wishes, through: :animals
    has_many :toys, through: :wishes
    accepts_nested_attributes_for :animals

    # validations
    validates :password, confirmation: true, message: "Passwords must match."
    validates :password_confirmation, presence: true
    validates :email, presence: true, message: "Please enter a valid email."
    validates :email, uniqueness: true, message: "An account already exists with that email."
    has_secure_password
    
    enum role: {donor: 0, keeper: 1, admin: 2} # set role by calling self.donor!, self.keeper!, self.admin

    # set default role to donor
    after_initialize do
        if self.new_record?
            self.role ||= :donor 
        end
    end


    

end
