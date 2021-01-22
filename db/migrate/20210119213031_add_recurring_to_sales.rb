class AddRecurringToSales < ActiveRecord::Migration[6.1]
  def change
    add_column :sales, :recurring, :boolean
  end
end
