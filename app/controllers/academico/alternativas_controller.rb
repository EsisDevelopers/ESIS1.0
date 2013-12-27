class Academico::AlternativasController < ApplicationController
  before_action :set_alternativa, only: [:show, :edit]
  def index
    @alternativas=Alternativa.all
  end

  def show
  end

  def edit
  end

  private

  def set_alternativa
    @alternativa=Academico::Alternativa.find(params[:id])
  end
end
