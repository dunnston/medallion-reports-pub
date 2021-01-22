class RemoveProductNameFromSales < ActiveRecord::Migration[6.1]
  def change
    remove_column :sales, :product_name, :string
  end
end
