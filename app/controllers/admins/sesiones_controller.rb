class Admins::SesionesController < ApplicationController
  
  before_filter :authenticate_user!
  layout 'admins'
  
  def index
  end
end
