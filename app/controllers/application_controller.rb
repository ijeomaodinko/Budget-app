class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :update_allowed_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
  end

  def after_sign_in_path_for(_resource)
    categories_path
  end

  def after_sign_up_path_for(_resource)
    categories_path
  end

  def after_sign_out_path_for(_resource)
    root_path
  end
end
