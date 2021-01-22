class CreateProductCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :product_companies do |t|
      t.string :name

      t.timestamps
    end
  end
end
