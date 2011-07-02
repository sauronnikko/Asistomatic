# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110702160107) do

  create_table "bloques", :force => true do |t|
    t.integer  "numero"
    t.time     "hora_ini"
    t.time     "hora_fin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bloques", ["numero"], :name => "index_bloques_on_numero", :unique => true

  create_table "docentes", :force => true do |t|
    t.string   "nombres",    :null => false
    t.string   "apellidos",  :null => false
    t.string   "cedula",     :null => false
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "docentes", ["cedula"], :name => "index_docentes_on_cedula", :unique => true
  add_index "docentes", ["email"], :name => "index_docentes_on_email", :unique => true

  create_table "inasistencia", :force => true do |t|
    t.string   "justificacion"
    t.string   "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "docente_id"
  end

end
