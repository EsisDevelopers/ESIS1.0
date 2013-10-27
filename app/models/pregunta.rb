class Pregunta < ActiveRecord::Base
  has_many :encuestas
  has_many :respuestas, through: :encuestas 
end
