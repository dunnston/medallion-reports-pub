class RemoveSalesRepFromSales < ActiveRecord::Migration[6.1]
  def change
    remove_column :sales, :sales_rep, :string
  end
end
