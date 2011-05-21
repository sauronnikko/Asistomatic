class CreateDocentes < ActiveRecord::Migration
  def self.up
    create_table :docentes do |t|
      t.string :nombres,    :null => false
      t.string :apellidos,  :null => false
      t.string :cedula,     :null => false
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :docentes
  end
end
