class Location < ApplicationRecord
    has_many :company_locations
    has_many :companies, through: :company_locations
end
