class Respuesta < ActiveRecord::Base
  has_many :encuestas
  has_many :preguntas, through: :encuestas 
end
