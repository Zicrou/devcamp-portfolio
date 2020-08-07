class CreateMainsdoeuvres < ActiveRecord::Migration[5.2]
  def change
    create_table :mainsdoeuvres do |t|
      t.string :nom
      t.string :prenom
      t.string :telephone

      t.timestamps
    end
  end
end
