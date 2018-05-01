class City < ApplicationRecord
    validates :name, presence:true
    validates :name, uniqueness:true
    has_many :company_cities
    has_many :companies,  through: :company_cities

end
