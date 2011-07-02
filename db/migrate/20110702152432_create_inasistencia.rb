class CreateInasistencia < ActiveRecord::Migration
  def self.up
    create_table :inasistencia do |t|
      t.string :justificacion
      t.string :observaciones

      t.timestamps
    end
  end

  def self.down
    drop_table :inasistencia
  end
end
