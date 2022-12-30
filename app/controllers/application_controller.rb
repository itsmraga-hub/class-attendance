class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_admin!
  before_action :authenticate_staff!
  before_action :authenticate_student!

  # before_action :update_allowed_parameters, if: :devise_controller?
end
