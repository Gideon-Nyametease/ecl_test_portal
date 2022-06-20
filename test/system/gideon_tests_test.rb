require "application_system_test_case"

class GideonTestsTest < ApplicationSystemTestCase
  setup do
    @gideon_test = gideon_tests(:one)
  end

  test "visiting the index" do
    visit gideon_tests_url
    assert_selector "h1", text: "Gideon Tests"
  end

  test "creating a Gideon test" do
    visit gideon_tests_url
    click_on "New Gideon Test"

    fill_in "Dob", with: @gideon_test.dob
    fill_in "Email", with: @gideon_test.email
    fill_in "First name", with: @gideon_test.first_name
    fill_in "Gender", with: @gideon_test.gender
    fill_in "Home address", with: @gideon_test.home_address
    fill_in "Id number", with: @gideon_test.id_number
    fill_in "Id type", with: @gideon_test.id_type
    fill_in "Last name", with: @gideon_test.last_name
    fill_in "Nationality", with: @gideon_test.nationality
    fill_in "Occupation", with: @gideon_test.occupation
    fill_in "Phone number", with: @gideon_test.phone_number
    fill_in "Second address", with: @gideon_test.second_address
    click_on "Create Gideon test"

    assert_text "Gideon test was successfully created"
    click_on "Back"
  end

  test "updating a Gideon test" do
    visit gideon_tests_url
    click_on "Edit", match: :first

    fill_in "Dob", with: @gideon_test.dob
    fill_in "Email", with: @gideon_test.email
    fill_in "First name", with: @gideon_test.first_name
    fill_in "Gender", with: @gideon_test.gender
    fill_in "Home address", with: @gideon_test.home_address
    fill_in "Id number", with: @gideon_test.id_number
    fill_in "Id type", with: @gideon_test.id_type
    fill_in "Last name", with: @gideon_test.last_name
    fill_in "Nationality", with: @gideon_test.nationality
    fill_in "Occupation", with: @gideon_test.occupation
    fill_in "Phone number", with: @gideon_test.phone_number
    fill_in "Second address", with: @gideon_test.second_address
    click_on "Update Gideon test"

    assert_text "Gideon test was successfully updated"
    click_on "Back"
  end

  test "destroying a Gideon test" do
    visit gideon_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gideon test was successfully destroyed"
  end
end
