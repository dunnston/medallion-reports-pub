class RemoveProductTypeFromSales < ActiveRecord::Migration[6.1]
  def change
    remove_column :sales, :product_type, :string
  end
end
