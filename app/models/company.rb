class Company < ApplicationRecord
    has_many :company_cities
    has_many :cities, through: :company_cities
    has_many :company_locations
    has_many :locations, through: :company_locations
end
