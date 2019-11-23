class Keeper < ApplicationRecord
    has_many :animals
    has_many :wishes, through: :animals
    has_many :toys, through: :wishes
end
