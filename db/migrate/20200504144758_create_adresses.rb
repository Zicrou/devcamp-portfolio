class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.string :name
      t.references :departement, foreign_key: true

      t.timestamps
    end
  end
end
