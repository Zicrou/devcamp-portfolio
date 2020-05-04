class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :etablissement
      t.string :adresse
      t.string :domaine
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
