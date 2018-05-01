class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :company_id
      t.text :description
      t.integer :location_id
      t.integer :experience_type_id
      t.text :eligibility
      t.text :desired_skills
      t.string :salary
      t.integer :position_id
      t.integer :job_type_id

      t.timestamps
    end
  end
end
