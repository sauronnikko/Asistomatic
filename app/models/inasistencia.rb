# == Schema Information
# Schema version: 20110702214522
#
# Table name: inasistencia
#
#  id            :integer(4)      not null, primary key
#  justificacion :string(255)
#  observacion   :string(255)
#  docente_id    :integer(4)
#  created_at    :datetime
#  updated_at    :datetime
#

class Inasistencia < ActiveRecord::Base

  attr_accessible :justificacion, :observacion

  validates_presence_of :docente_id

  belongs_to :docente



end
