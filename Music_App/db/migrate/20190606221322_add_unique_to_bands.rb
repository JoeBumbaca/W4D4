class AddUniqueToBands < ActiveRecord::Migration[5.2]
  def change
    add_index :bands, :name, unique: true
  end
end
