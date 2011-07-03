class AddFechaUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :fechas, :fecha, :unique => true
  end

  def self.down
    remove_index :fechas, :fecha
  end
end
