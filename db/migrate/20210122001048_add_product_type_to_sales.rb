class AddProductTypeToSales < ActiveRecord::Migration[6.1]
  def change
    add_reference :sales, :product_type, null: false, foreign_key: true
  end
end
