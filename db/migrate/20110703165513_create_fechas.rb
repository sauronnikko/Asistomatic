class CreateFechas < ActiveRecord::Migration
  def self.up
    create_table :fechas do |t|
      t.date :fecha

      t.timestamps
    end
  end

  def self.down
    drop_table :fechas
  end
end
