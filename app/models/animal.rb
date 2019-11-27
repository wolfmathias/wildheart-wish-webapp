class Animal < ApplicationRecord
    belongs_to :user
    has_many :wishes
    has_many :toys, through: :wishes
    has_many :donations, through: :wishes
    has_many :donors, through: :donations


end
