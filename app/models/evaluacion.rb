class Evaluacion < ActiveRecord::Base
  belongs_to :tema
  belongs_to :encuesta
  belongs_to :contrato
end
