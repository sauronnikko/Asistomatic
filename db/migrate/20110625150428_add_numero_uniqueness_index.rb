class AddNumeroUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :bloques, :numero, :unique => true
  end

  def self.down
    remove_index :bloques, :numero
  end
end
