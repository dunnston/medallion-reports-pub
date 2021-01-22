class AddProductCompanyToSales < ActiveRecord::Migration[6.1]
  def change
    add_reference :sales, :product_company, null: false, foreign_key: true
  end
end
