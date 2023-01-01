require "application_system_test_case"

class StaffCoursesTest < ApplicationSystemTestCase
  setup do
    @staff_course = staff_courses(:one)
  end

  test "visiting the index" do
    visit staff_courses_url
    assert_selector "h1", text: "Staff courses"
  end

  test "should create staff course" do
    visit staff_courses_url
    click_on "New staff course"

    fill_in "Course", with: @staff_course.course_id
    fill_in "Staff", with: @staff_course.staff_id
    click_on "Create Staff course"

    assert_text "Staff course was successfully created"
    click_on "Back"
  end

  test "should update Staff course" do
    visit staff_course_url(@staff_course)
    click_on "Edit this staff course", match: :first

    fill_in "Course", with: @staff_course.course_id
    fill_in "Staff", with: @staff_course.staff_id
    click_on "Update Staff course"

    assert_text "Staff course was successfully updated"
    click_on "Back"
  end

  test "should destroy Staff course" do
    visit staff_course_url(@staff_course)
    click_on "Destroy this staff course", match: :first

    assert_text "Staff course was successfully destroyed"
  end
end
