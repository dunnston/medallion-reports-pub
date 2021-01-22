class RemoveProductFromSales < ActiveRecord::Migration[6.1]
  def change
    remove_column :sales, :product, :string
  end
end
