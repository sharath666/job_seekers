class Company < ApplicationRecord
    validates :name, :company_url, :email, :contact_no, presence:true
    validates :name, :company_url, :email, :contact_no, uniqueness:true
    has_many :company_cities
    has_many :cities, through: :company_cities
    has_many :company_locations
    has_many :locations, through: :company_locations

end
