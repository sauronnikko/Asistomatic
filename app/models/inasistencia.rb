class Inasistencia < ActiveRecord::Base

  attr_accessible :justificacion, :observaciones

  belongs_to :docente




end
