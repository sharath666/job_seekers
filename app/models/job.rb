class Job < ApplicationRecord
    validates :name, :company_id, :experience_type_id, :location_id, :salary, :position_id, :job_type_id, :salary, :eligibility, :desired_skills, presence:true
    validates :name, uniqueness:true
    belongs_to :job_type
    belongs_to :position
    belongs_to :experience_type
end
