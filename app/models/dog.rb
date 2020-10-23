class Dog < ApplicationRecord

    belongs_to :city, optional: true

    has_many :strolls, dependent: :destroy
    has_many :dogsitters, through: :strolls
end
