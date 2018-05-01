class JobTechnology < ApplicationRecord
    has_many :job_technologies
    has_many technologies: :job_technologies
end
