require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test 'should get student_dashboard' do
    get dashboards_student_dashboard_url
    assert_response :success
  end

  test 'should get staff_dashboard' do
    get dashboards_staff_dashboard_url
    assert_response :success
  end

  test 'should get admin_dashboard' do
    get dashboards_admin_dashboard_url
    assert_response :success
  end
end
