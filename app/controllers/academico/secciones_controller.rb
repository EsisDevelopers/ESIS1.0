class Academico::SeccionesController < ApplicationController
  
  before_filter :authenticate_user!
  layout 'academico'
  
  def index
  end
end
