class Keeper < ApplicationRecord
    has_many :animals
    has_many :wishes, through: :animals
    has_many :toys, through: :wishes
    accepts_nested_attributes_for :animals

    validates :password, confirmation: true, message: "Passwords must match."
    validates :password_confirmation, presence: true
    validates :email, presence: true, message: "Please enter a valid email."
    validates :email, uniqueness: true, message: "An account already exists with that email."
    
end
