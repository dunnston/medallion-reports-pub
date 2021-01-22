class RemoveCompanyNameFromSales < ActiveRecord::Migration[6.1]
  def change
    remove_column :sales, :company_name, :string
  end
end
