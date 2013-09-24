class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_user, only:[:show, :estudiante, :docente, :admistrativo]
  def index
    authorize! :index, @user, :message => 'No autorizado como administrador.'
    @users = User.all
  end

  def show
  end
  
  def update
    authorize! :update, @user, :message => 'No autorizado como administrador.'
    @user = set_user
    if @user.update_attributes(params[:user], :as => :admin)
      redirect_to users_path, :notice => "Usuario actualizado"
    else
      redirect_to users_path, :alert => "No se puede actualizar el usuario."
    end
  end
  
  def estudiante
	#user_session :estudiante, @user, :message => 'No autorizado como administrador'
  end
  
  def docente
  
  end
  
  def admistrativo
  
  end
    
  def destroy
    authorize! :destroy, @user, :message => 'No autorizado como administrador.'
    user = set_user
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "Usuario eliminado"
    else
      redirect_to users_path, :notice => "No se puede eliminar usted mismo."
    end
  end
  
  private
  
  def set_user
	@user = User.find(params[:id])
  end
  
  def user_params
	params.require(:user).permit(:dni, :nombre, :paterno, :materno, :fechanacio, :sexo, :linkfoto)
  end
end
