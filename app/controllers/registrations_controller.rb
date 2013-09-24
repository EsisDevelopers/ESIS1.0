class RegistrationsController < Devise::RegistrationsController
  
  before_filter :update_sanitized_params, if: :devise_controller?
  
  protected
  
  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:codigo, :email, :password, :password_confirmation)}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:codigo, :email, :password, :password_confirmation, :current_password)}
  end
end
