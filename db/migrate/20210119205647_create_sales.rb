class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.string :name
      t.boolean :new_client
      t.datetime :client_on
      t.boolean :new_money
      t.string :sales_rep
      t.string :product
      t.string :source
      t.integer :opening_amount
      t.integer :first_year_comp
      t.integer :renewal_comp
      t.references :user

      t.timestamps
    end
  end
end
