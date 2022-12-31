# controllers/concerns/accessible.rb
module Accessible
  extend ActiveSupport::Concern
  # included do
    # before_action :check_resource
  # end

  protected

  # def after_sign_in_path_for(resource)
    # if current_admin.has_role?(:admin)
    #   root_path
    # elsif current_student.has_role?(:student)
    #   root_path
    # elsif current_staff.has_role?(:staff)
    #   root_path
    # end
    # redirect_to root_path
  # end

  # def check_resource
  #   if admin_signed_in?
  #     flash.clear
  #     redirect_to(root_path) and return
  #   elsif staff_signed_in?
  #     flash.clear
  #     redirect_to(root_path) and return
  #   elsif student_signed_in?
  #     redirect_to(root_path) and return
  #   end
  # end
end