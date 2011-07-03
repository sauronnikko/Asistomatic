class AddFechaToBloques < ActiveRecord::Migration
  def self.up
    add_column :bloques, :fecha_id, :integer
  end

  def self.down
    remove_column :bloques, :fecha_id
  end
end
