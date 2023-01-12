class DashboardsController < ApplicationController
  def student_dashboard; end

  def staff_dashboard; end

  def admin_dashboard
    # @admin = current_admin
    @departments = Department.all.where(admin: current_admin)
  end
end
