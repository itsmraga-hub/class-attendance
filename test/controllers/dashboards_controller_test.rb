require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test 'should get admin' do
    get dashboards_admin_url
    assert_response :success
  end

  test 'should get staff' do
    get dashboards_staff_url
    assert_response :success
  end

  test 'should get student' do
    get dashboards_student_url
    assert_response :success
  end
end
