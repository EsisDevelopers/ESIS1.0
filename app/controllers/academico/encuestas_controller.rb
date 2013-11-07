class Academico::EncuestasController < ApplicationController
  layout 'academico'
  
  def edit
  end

  def index
    @encuestas=Encuesta.all.group("pregunta_id")
    @respuestas=Encuesta.all
    @alternativas=Alternativa.all
  end

  def pregunta
    @respuestas=Encuesta.where("pregunta_id=@pregunta")
  end 

  def new
    @encuesta=Encuesta.new
  end

  def show
  end
end
