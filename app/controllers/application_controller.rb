class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_action :authenticate_admin! || :authenticate_staff! || :authenticate_student!
  def after_sign_in_path_for(resource)
    root_path
  end

  # before_action :update_allowed_parameters, if: :devise_controller?
end
