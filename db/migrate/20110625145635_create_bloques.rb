class CreateBloques < ActiveRecord::Migration
  def self.up
    create_table :bloques do |t|
      t.integer :numero
      t.time :hora_ini
      t.time :hora_fin

      t.timestamps
    end
  end

  def self.down
    drop_table :bloques
  end
end
