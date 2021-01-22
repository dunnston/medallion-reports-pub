class AddIssuedOnToSales < ActiveRecord::Migration[6.1]
  def change
    add_column :sales, :issued_on, :date
  end
end
