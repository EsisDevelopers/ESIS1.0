class Alternativa < ActiveRecord::Base
  has_many :detalle_encuestas
  has_many :preguntas, through: :detalle_encuestas
  belongs_to :tipo_encuesta
end
