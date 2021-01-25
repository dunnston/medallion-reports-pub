class RemoveSaleIdFromClients < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :sale_id, :integer
  end
end
