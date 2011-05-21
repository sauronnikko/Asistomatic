class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :docentes, :email, :unique => true
  end

  def self.down
    remove_index :docentes, :email
  end
end
