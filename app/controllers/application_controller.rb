class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(trainer)
    root_path
  end
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:trainer_tag, :team_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:trainer_tag, :team_name])
  end
end
