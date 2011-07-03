# == Schema Information
# Schema version: 20110703165513
#
# Table name: fechas
#
#  id         :integer(4)      not null, primary key
#  fecha      :date
#  created_at :datetime
#  updated_at :datetime
#

class Fecha < ActiveRecord::Base

  attr_accessible :fecha

  has_many :bloques
  has_many :inasistencias

  validates_presence_of :fecha

  validates_uniqueness_of :fecha

end
