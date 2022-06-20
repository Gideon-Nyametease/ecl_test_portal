require "test_helper"

class GideonTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gideon_test = gideon_tests(:one)
  end

  test "should get index" do
    get gideon_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_gideon_test_url
    assert_response :success
  end

  test "should create gideon_test" do
    assert_difference('GideonTest.count') do
      post gideon_tests_url, params: { gideon_test: { dob: @gideon_test.dob, email: @gideon_test.email, first_name: @gideon_test.first_name, gender: @gideon_test.gender, home_address: @gideon_test.home_address, id_number: @gideon_test.id_number, id_type: @gideon_test.id_type, last_name: @gideon_test.last_name, nationality: @gideon_test.nationality, occupation: @gideon_test.occupation, phone_number: @gideon_test.phone_number, second_address: @gideon_test.second_address } }
    end

    assert_redirected_to gideon_test_url(GideonTest.last)
  end

  test "should show gideon_test" do
    get gideon_test_url(@gideon_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_gideon_test_url(@gideon_test)
    assert_response :success
  end

  test "should update gideon_test" do
    patch gideon_test_url(@gideon_test), params: { gideon_test: { dob: @gideon_test.dob, email: @gideon_test.email, first_name: @gideon_test.first_name, gender: @gideon_test.gender, home_address: @gideon_test.home_address, id_number: @gideon_test.id_number, id_type: @gideon_test.id_type, last_name: @gideon_test.last_name, nationality: @gideon_test.nationality, occupation: @gideon_test.occupation, phone_number: @gideon_test.phone_number, second_address: @gideon_test.second_address } }
    assert_redirected_to gideon_test_url(@gideon_test)
  end

  test "should destroy gideon_test" do
    assert_difference('GideonTest.count', -1) do
      delete gideon_test_url(@gideon_test)
    end

    assert_redirected_to gideon_tests_url
  end
end
