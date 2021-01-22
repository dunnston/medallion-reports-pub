class RemoveSourceFromSales < ActiveRecord::Migration[6.1]
  def change
    remove_column :sales, :source, :string
  end
end
