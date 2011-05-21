class Docente < ActiveRecord::Base

  attr_accessible :nombres, :apellidos, :cedula, :email

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates_presence_of :nombres, :apellidos, :cedula

  validates_uniqueness_of :cedula
  
  validates_uniqueness_of :email, :allow_nil => true

  validates_format_of :email, :with => email_regex

  validates_length_of :nombres,
    :in         => 2..60,
    :too_short  => "Debe tener al menos %{count} caracteres",
    :too_long   => "Debe tener a lo sumo %{count} caracteres"
    
  validates_length_of :apellidos,
    :in         => 2..60,
    :too_short  => "Debe tener al menos %{count} caracteres",
    :too_long   => "Debe tener a lo sumo %{count} caracteres"

  validates_length_of :cedula,
    :maximum   => 15,
    :too_long  => "Debe tener a lo sumo %{count} caracteres"

end
