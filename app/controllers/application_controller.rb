class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|			#Sentencia que indica para filtrar accesos
    redirect_to root_path, :alert => exception.message
  end
  
  #if current_user.has_role? :admin 
  #  redirect_to admins_root
  #end

end
