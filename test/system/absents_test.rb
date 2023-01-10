require "application_system_test_case"

class AbsentsTest < ApplicationSystemTestCase
  setup do
    @absent = absents(:one)
  end

  test "visiting the index" do
    visit absents_url
    assert_selector "h1", text: "Absents"
  end

  test "should create absent" do
    visit absents_url
    click_on "New absent"

    fill_in "Student", with: @absent.student_id
    fill_in "Subject date", with: @absent.subject_date
    fill_in "Subject", with: @absent.subject_id
    click_on "Create Absent"

    assert_text "Absent was successfully created"
    click_on "Back"
  end

  test "should update Absent" do
    visit absent_url(@absent)
    click_on "Edit this absent", match: :first

    fill_in "Student", with: @absent.student_id
    fill_in "Subject date", with: @absent.subject_date
    fill_in "Subject", with: @absent.subject_id
    click_on "Update Absent"

    assert_text "Absent was successfully updated"
    click_on "Back"
  end

  test "should destroy Absent" do
    visit absent_url(@absent)
    click_on "Destroy this absent", match: :first

    assert_text "Absent was successfully destroyed"
  end
end
