# ../controllers/concerns/accessible.rb
module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_admin
      flash.clear
      # if you have rails_admin. You can redirect anywhere really
      redirect_to(authenticated_admin_dashboard_path) and return
    elsif current_student
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      redirect_to(authenticated_student_dashboard_path) and return
    elsif current_staff
      flash.clear
      redirect_to(authenticated_staff_dasshboard_path) and return
    end
  end

  def authenticated!
    # if current_staff
    #   :authenticate_staff!
    # elsif current_student
    #   :authenticate_student!
    # elsif current_admin
    #   :authenticate_admin!
    # end
    :authenticate_admin! || :authenticate_staff! || :authenticate_student!
  end
end