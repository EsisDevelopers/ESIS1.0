class Academico::EncuestasController < ApplicationController
  layout 'academico'
  before_action :set_encuesta, only: [:show, :edit, :totalalternativas]

  def edit
  end

  def index
    @preguntas=Pregunta.all
    @alternativas=Alternativa.select(:nombre).where(tipo_encuesta_id: "1")
  end

  def new
    @encuesta=Encuesta.new
  end

  def show
  end

  private

  def set_encuesta
    @encuesta=Encuesta.find(params[:id])
  end

  def encuesta_params
  end
end
