class AddDocenteIdInasistencia < ActiveRecord::Migration
  def self.up
    change_table :inasistencia do |t|
      t.integer :docente_id
    end
  end

  def self.down
    remove_column :inasistencia
  end
end
