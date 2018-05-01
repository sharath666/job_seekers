class Job < ApplicationRecord
    belongs_to :job_type
    belongs_to :position
    belongs_to :experience_type
end
