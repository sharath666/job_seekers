class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :company_url
      t.string :email
      t.string :contact_no

      t.timestamps
    end
  end
end
