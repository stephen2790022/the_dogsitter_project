class Dogsitter < ApplicationRecord
    belongs_to :city, optional: true

    has_many :strolls, dependent: :destroy
    has_many :dogs, through: :strolls
end
