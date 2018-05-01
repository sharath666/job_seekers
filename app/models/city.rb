class City < ApplicationRecord
    has_many :company_cities
    has_many :companies,  through: :company_cities
end
