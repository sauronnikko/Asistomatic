# == Schema Information
# Schema version: 20110703170013
#
# Table name: bloques
#
#  id         :integer(4)      not null, primary key
#  numero     :integer(4)
#  hora_ini   :time
#  hora_fin   :time
#  created_at :datetime
#  updated_at :datetime
#  fecha_id   :integer(4)
#



class Bloque < ActiveRecord::Base

  attr_accessible :numero, :hora_ini, :hora_fin

  belongs_to :fecha

  validates :numero,  :presence   => true,
                      :uniqueness => true,
                      :numericality => { :greater_than => 0, :only_integer => true } 
                 
 
  validates :hora_ini, :presence => true
  validates :hora_fin, :presence => true



end
