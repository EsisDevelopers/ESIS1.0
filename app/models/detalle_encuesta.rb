class DetalleEncuesta < ActiveRecord::Base
  belongs_to :pregunta
  belongs_to :alternativa
  has_many :encuestas
end
