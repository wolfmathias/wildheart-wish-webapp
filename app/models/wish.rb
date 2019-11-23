class Wish < ApplicationRecord
    has_many :donations
    has_many :donors, through: :donations
    belongs_to :animal
    belongs_to :toy
    has_one :keeper, through: :animal
end
