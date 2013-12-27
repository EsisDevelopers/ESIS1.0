class Encuesta < ActiveRecord::Base
  #belongs_to :contrato
  belongs_to :tema
  has_many :detalle_encuestas
end
