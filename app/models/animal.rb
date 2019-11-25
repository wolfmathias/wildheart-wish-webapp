class Animal < ApplicationRecord
    belongs_to :keeper
    has_many :wishes
    has_many :toys, through: :wishes
    has_many :donations, through: :wishes
    has_many :donors, through: :donations

    # create a Wish for every toy added to this animals collection every time a toy is added to an animal's collection
    def toy_ids=(toy_ids)
        toy_ids.each do |id|
            self.wishes.build(toy_id: id)
        end
    end

end
