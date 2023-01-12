class DashboardsController < ApplicationController
  def student_dashboard
  end

  def staff_dashboard
  end

  def admin_dashboard
    @departments = Department.all.where(admin: current_admin)
  end
end
