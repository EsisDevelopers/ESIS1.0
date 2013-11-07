class Pregunta < ActiveRecord::Base
  has_many :encuestas
  has_many :alternativas, through: :encuestas 
end
