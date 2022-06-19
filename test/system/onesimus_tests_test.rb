require "application_system_test_case"

class OnesimusTestsTest < ApplicationSystemTestCase
  setup do
    @onesimus_test = onesimus_tests(:one)
  end

  test "visiting the index" do
    visit onesimus_tests_url
    assert_selector "h1", text: "Onesimus Tests"
  end

  test "creating a Onesimus test" do
    visit onesimus_tests_url
    click_on "New Onesimus Test"

    fill_in "Accident desc", with: @onesimus_test.accident_desc
    fill_in "Accident location", with: @onesimus_test.accident_location
    fill_in "Address", with: @onesimus_test.address
    fill_in "Business private", with: @onesimus_test.business_private
    check "Convicted of motoring offence" if @onesimus_test.convicted_of_motoring_offence
    fill_in "Date of issue", with: @onesimus_test.date_of_issue
    fill_in "Driver address", with: @onesimus_test.driver_address
    fill_in "Driver age", with: @onesimus_test.driver_age
    fill_in "Driver name", with: @onesimus_test.driver_name
    fill_in "Driver telephone", with: @onesimus_test.driver_telephone
    fill_in "Driving license no", with: @onesimus_test.driving_license_no
    fill_in "Licence class", with: @onesimus_test.licence_class
    fill_in "Loss date", with: @onesimus_test.loss_date
    fill_in "Make", with: @onesimus_test.make
    fill_in "Model", with: @onesimus_test.model
    fill_in "Name of insured", with: @onesimus_test.name_of_insured
    fill_in "Nature of loss", with: @onesimus_test.nature_of_loss
    fill_in "Occupation", with: @onesimus_test.occupation
    fill_in "Policy number", with: @onesimus_test.policy_number
    fill_in "Reg number", with: @onesimus_test.reg_number
    fill_in "Report date", with: @onesimus_test.report_date
    fill_in "Telephone", with: @onesimus_test.telephone
    fill_in "Time of loss", with: @onesimus_test.time_of_loss
    fill_in "Vehicle speed", with: @onesimus_test.vehicle_speed
    fill_in "Year of make", with: @onesimus_test.year_of_make
    click_on "Create Onesimus test"

    assert_text "Onesimus test was successfully created"
    click_on "Back"
  end

  test "updating a Onesimus test" do
    visit onesimus_tests_url
    click_on "Edit", match: :first

    fill_in "Accident desc", with: @onesimus_test.accident_desc
    fill_in "Accident location", with: @onesimus_test.accident_location
    fill_in "Address", with: @onesimus_test.address
    fill_in "Business private", with: @onesimus_test.business_private
    check "Convicted of motoring offence" if @onesimus_test.convicted_of_motoring_offence
    fill_in "Date of issue", with: @onesimus_test.date_of_issue
    fill_in "Driver address", with: @onesimus_test.driver_address
    fill_in "Driver age", with: @onesimus_test.driver_age
    fill_in "Driver name", with: @onesimus_test.driver_name
    fill_in "Driver telephone", with: @onesimus_test.driver_telephone
    fill_in "Driving license no", with: @onesimus_test.driving_license_no
    fill_in "Licence class", with: @onesimus_test.licence_class
    fill_in "Loss date", with: @onesimus_test.loss_date
    fill_in "Make", with: @onesimus_test.make
    fill_in "Model", with: @onesimus_test.model
    fill_in "Name of insured", with: @onesimus_test.name_of_insured
    fill_in "Nature of loss", with: @onesimus_test.nature_of_loss
    fill_in "Occupation", with: @onesimus_test.occupation
    fill_in "Policy number", with: @onesimus_test.policy_number
    fill_in "Reg number", with: @onesimus_test.reg_number
    fill_in "Report date", with: @onesimus_test.report_date
    fill_in "Telephone", with: @onesimus_test.telephone
    fill_in "Time of loss", with: @onesimus_test.time_of_loss
    fill_in "Vehicle speed", with: @onesimus_test.vehicle_speed
    fill_in "Year of make", with: @onesimus_test.year_of_make
    click_on "Update Onesimus test"

    assert_text "Onesimus test was successfully updated"
    click_on "Back"
  end

  test "destroying a Onesimus test" do
    visit onesimus_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Onesimus test was successfully destroyed"
  end
end
