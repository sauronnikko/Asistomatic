class CreateInasistencia < ActiveRecord::Migration
  def self.up
    create_table :inasistencia do |t|
      t.string :justificacion
      t.string :observacion
      t.integer :docente_id

      t.timestamps
    end
  end

  def self.down
    drop_table :inasistencia
  end
end
