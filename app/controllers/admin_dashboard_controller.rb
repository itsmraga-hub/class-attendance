class AdminDashboardController < ApplicationController
  # before_action :authenticate_admin!

  def index
    @departments = Department.all.where(admin: current_admin)
  end
end
