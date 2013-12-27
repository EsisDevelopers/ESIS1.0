class Pregunta < ActiveRecord::Base
  has_many :preguntas
  has_many :alternativas, through: :detalle_encuestas
  belongs_to :tipo_encuesta
end
