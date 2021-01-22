class RemoveOldProductNameFromSales < ActiveRecord::Migration[6.1]
  def change
    remove_reference :sales, :product_name, null: false, foreign_key: true
  end
end
