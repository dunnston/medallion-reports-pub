class RemoveSaleFromClients < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :sale, :belong_to
  end
end
