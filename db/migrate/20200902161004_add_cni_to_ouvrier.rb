class AddCniToOuvrier < ActiveRecord::Migration[5.2]
  def change
    add_column :ouvriers, :cni, :string
  end
end
