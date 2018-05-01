class Technology < ApplicationRecord
    has_many :job_technologies
    has_many :jobs, through: :job_technologies
end
