class AddProductNameToSales < ActiveRecord::Migration[6.1]
  def change
    add_column :sales, :product_name, :string
  end
end
