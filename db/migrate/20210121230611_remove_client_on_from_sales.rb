class RemoveClientOnFromSales < ActiveRecord::Migration[6.1]
  def change
    remove_column :sales, :client_on, :datetime
  end
end
