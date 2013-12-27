class TipoEncuesta < ActiveRecord::Base
  has_many :preguntas
  has_many :alternativas
end
