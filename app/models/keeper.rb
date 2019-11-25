class Keeper < ApplicationRecord
    has_many :animals
    has_many :wishes, through: :animals
    has_many :toys, through: :wishes
    accepts_nested_attributes_for :animals

    validates :password, confirmation: true
    validates :password_confirmation, presence: true
    
end
