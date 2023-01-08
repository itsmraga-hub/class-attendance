require 'test_helper'

class StaffCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @staff_course = staff_courses(:one)
  end

  test 'should get index' do
    get staff_courses_url
    assert_response :success
  end

  test 'should get new' do
    get new_staff_course_url
    assert_response :success
  end

  test 'should create staff_course' do
    assert_difference('StaffCourse.count') do
      post staff_courses_url,
           params: { staff_course: { course_id: @staff_course.course_id, staff_id: @staff_course.staff_id } }
    end

    assert_redirected_to staff_course_url(StaffCourse.last)
  end

  test 'should show staff_course' do
    get staff_course_url(@staff_course)
    assert_response :success
  end

  test 'should get edit' do
    get edit_staff_course_url(@staff_course)
    assert_response :success
  end

  test 'should update staff_course' do
    patch staff_course_url(@staff_course),
          params: { staff_course: { course_id: @staff_course.course_id, staff_id: @staff_course.staff_id } }
    assert_redirected_to staff_course_url(@staff_course)
  end

  test 'should destroy staff_course' do
    assert_difference('StaffCourse.count', -1) do
      delete staff_course_url(@staff_course)
    end

    assert_redirected_to staff_courses_url
  end
end
