class CreateProductNames < ActiveRecord::Migration[6.1]
  def change
    create_table :product_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
