# == Schema Information
# Schema version: 20110625145635
#
# Table name: bloques
#
#  id         :integer(4)      not null, primary key
#  numero     :integer(4)
#  hora_ini   :time
#  hora_fin   :time
#  created_at :datetime
#  updated_at :datetime
#



class Bloque < ActiveRecord::Base

  attr_accessible :numero, :hora_ini, :hora_fin

  validates :numero,  :presence   => true,
                      :uniqueness => true
                  
  validates :hora_ini, :presence => true
  validates :hora_fin, :presence => true


end
