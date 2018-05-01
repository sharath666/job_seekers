json.extract! job, :id, :name, :company_id, :description, :location_id, :experience_type_id, :eligibility, :desired_skills, :salary, :position_id, :job_type_id, :created_at, :updated_at
json.url job_url(job, format: :json)
