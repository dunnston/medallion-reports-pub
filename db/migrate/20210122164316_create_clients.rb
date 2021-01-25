class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.boolean :lost
      t.belongs_to :sale, null: false, foreign_key: true
      t.belongs_to :source, null: false, foreign_key: true
      t.belongs_to :rep, null: false, foreign_key: true
      t.date :client_on

      t.timestamps
    end
  end
end
