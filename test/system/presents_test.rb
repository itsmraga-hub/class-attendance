require 'application_system_test_case'

class PresentsTest < ApplicationSystemTestCase
  setup do
    @present = presents(:one)
  end

  test 'visiting the index' do
    visit presents_url
    assert_selector 'h1', text: 'Presents'
  end

  test 'should create present' do
    visit presents_url
    click_on 'New present'

    fill_in 'Student', with: @present.student_id
    fill_in 'Subject date', with: @present.subject_date
    fill_in 'Subject', with: @present.subject_id
    click_on 'Create Present'

    assert_text 'Present was successfully created'
    click_on 'Back'
  end

  test 'should update Present' do
    visit present_url(@present)
    click_on 'Edit this present', match: :first

    fill_in 'Student', with: @present.student_id
    fill_in 'Subject date', with: @present.subject_date
    fill_in 'Subject', with: @present.subject_id
    click_on 'Update Present'

    assert_text 'Present was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Present' do
    visit present_url(@present)
    click_on 'Destroy this present', match: :first

    assert_text 'Present was successfully destroyed'
  end
end
