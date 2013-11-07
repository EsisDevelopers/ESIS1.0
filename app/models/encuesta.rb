class Encuesta < ActiveRecord::Base
 belongs_to :pregunta 
 belongs_to :respuesta 

 has_many :evaluacion
end
