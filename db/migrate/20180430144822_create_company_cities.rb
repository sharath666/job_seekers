class CreateCompanyCities < ActiveRecord::Migration[5.1]
  def change
    create_table :company_cities do |t|
      t.integer :company_id
      t.integer :city_id

      t.timestamps
    end
  end
end
