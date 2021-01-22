class AddCompanyNameToSales < ActiveRecord::Migration[6.1]
  def change
    add_column :sales, :company_name, :string
  end
end
