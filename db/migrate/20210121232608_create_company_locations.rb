class CreateCompanyLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :company_locations do |t|
      t.string :location_name

      t.timestamps
    end
  end
end
