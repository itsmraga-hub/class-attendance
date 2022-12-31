class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_action :authenticate_admin! || :authenticate_staff! || :authenticate_student!
  before_action :authenticate!

  def after_sign_in_path_for(resource)
  #   if current_user.has_role?(:admin)
  #     dashboard_path
  #   elsif current_user.has_role?(:student)
  #     root_path
  #  end
    root_path
  end

  protected

  def authenticate!
    if current_admin 
        :authenticate_admin!
    elsif current_staff
        :authenticate_staff!
    elsif current_student
        :authenticate_student!
    end
  end

  # before_action :update_allowed_parameters, if: :devise_controller?
end
