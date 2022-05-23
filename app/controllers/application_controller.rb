class ApplicationController < ActionController::Base
   before_action :authenticate_user!
   
  def after_sign_in_path_for(resource)
    dashboard_path
  end
  
 protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :country, :mobile)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :country, :mobile)}
    end
end
