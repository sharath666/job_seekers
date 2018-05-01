class JobType < ApplicationRecord
    validates :name, presence:true
    has_many :jobs

end
