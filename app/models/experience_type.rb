class ExperienceType < ApplicationRecord
    has_many :jobs
    validates :name, presence:true
    validates :name, uniqueness:true
end
