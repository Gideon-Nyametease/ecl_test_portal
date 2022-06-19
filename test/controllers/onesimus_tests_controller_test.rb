require "test_helper"

class OnesimusTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @onesimus_test = onesimus_tests(:one)
  end

  test "should get index" do
    get onesimus_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_onesimus_test_url
    assert_response :success
  end

  test "should create onesimus_test" do
    assert_difference('OnesimusTest.count') do
      post onesimus_tests_url, params: { onesimus_test: { accident_desc: @onesimus_test.accident_desc, accident_location: @onesimus_test.accident_location, address: @onesimus_test.address, business_private: @onesimus_test.business_private, convicted_of_motoring_offence: @onesimus_test.convicted_of_motoring_offence, date_of_issue: @onesimus_test.date_of_issue, driver_address: @onesimus_test.driver_address, driver_age: @onesimus_test.driver_age, driver_name: @onesimus_test.driver_name, driver_telephone: @onesimus_test.driver_telephone, driving_license_no: @onesimus_test.driving_license_no, licence_class: @onesimus_test.licence_class, loss_date: @onesimus_test.loss_date, make: @onesimus_test.make, model: @onesimus_test.model, name_of_insured: @onesimus_test.name_of_insured, nature_of_loss: @onesimus_test.nature_of_loss, occupation: @onesimus_test.occupation, policy_number: @onesimus_test.policy_number, reg_number: @onesimus_test.reg_number, report_date: @onesimus_test.report_date, telephone: @onesimus_test.telephone, time_of_loss: @onesimus_test.time_of_loss, vehicle_speed: @onesimus_test.vehicle_speed, year_of_make: @onesimus_test.year_of_make } }
    end

    assert_redirected_to onesimus_test_url(OnesimusTest.last)
  end

  test "should show onesimus_test" do
    get onesimus_test_url(@onesimus_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_onesimus_test_url(@onesimus_test)
    assert_response :success
  end

  test "should update onesimus_test" do
    patch onesimus_test_url(@onesimus_test), params: { onesimus_test: { accident_desc: @onesimus_test.accident_desc, accident_location: @onesimus_test.accident_location, address: @onesimus_test.address, business_private: @onesimus_test.business_private, convicted_of_motoring_offence: @onesimus_test.convicted_of_motoring_offence, date_of_issue: @onesimus_test.date_of_issue, driver_address: @onesimus_test.driver_address, driver_age: @onesimus_test.driver_age, driver_name: @onesimus_test.driver_name, driver_telephone: @onesimus_test.driver_telephone, driving_license_no: @onesimus_test.driving_license_no, licence_class: @onesimus_test.licence_class, loss_date: @onesimus_test.loss_date, make: @onesimus_test.make, model: @onesimus_test.model, name_of_insured: @onesimus_test.name_of_insured, nature_of_loss: @onesimus_test.nature_of_loss, occupation: @onesimus_test.occupation, policy_number: @onesimus_test.policy_number, reg_number: @onesimus_test.reg_number, report_date: @onesimus_test.report_date, telephone: @onesimus_test.telephone, time_of_loss: @onesimus_test.time_of_loss, vehicle_speed: @onesimus_test.vehicle_speed, year_of_make: @onesimus_test.year_of_make } }
    assert_redirected_to onesimus_test_url(@onesimus_test)
  end

  test "should destroy onesimus_test" do
    assert_difference('OnesimusTest.count', -1) do
      delete onesimus_test_url(@onesimus_test)
    end

    assert_redirected_to onesimus_tests_url
  end
end
