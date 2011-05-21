class AddCedulaUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :docentes, :cedula, :unique => true
  end

  def self.down
    remove_index :docentes; :cedula
  end
end
