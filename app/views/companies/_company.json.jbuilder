json.extract! company, :id, :name, :description, :company_url, :email, :contact_no, :created_at, :updated_at
json.url company_url(company, format: :json)
