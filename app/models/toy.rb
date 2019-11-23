class Toy < ApplicationRecord
    # are associations needed here? Will I ever call toys.donors or toys.animals?
    # has_many :wishes
    # has_many :donations, through: :wishes
    # has_many :donors, through: :donations
    # has_many :animals, through: :wishes
    # has_many :zookeepers, through: :animals
end
