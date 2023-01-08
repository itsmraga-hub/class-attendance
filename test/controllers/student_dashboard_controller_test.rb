require 'test_helper'

class StudentDashboardControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get student_dashboard_index_url
    assert_response :success
  end
end
