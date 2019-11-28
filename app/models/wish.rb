class Wish < ApplicationRecord
    belongs_to :animal
    belongs_to :toy
    has_many :donations
    has_many :donors, through: :donations
    has_one :user, through: :animal

    # add attribute/column for picture of animal playing with toy

    # below will cause record to not be saved even when there aren't any errors?
    # validates :animal_id, presence: true
    # validates :toy_id, presence: true
    
end
