class AddLostOnToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :lost_on, :date
  end
end
