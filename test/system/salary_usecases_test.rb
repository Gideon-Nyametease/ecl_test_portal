require "application_system_test_case"

class SalaryUsecasesTest < ApplicationSystemTestCase
  setup do
    @salary_usecase = salary_usecases(:one)
  end

  test "visiting the index" do
    visit salary_usecases_url
    assert_selector "h1", text: "Salary Usecases"
  end

  test "creating a Salary usecase" do
    visit salary_usecases_url
    click_on "New Salary Usecase"

    check "Active status" if @salary_usecase.active_status
    fill_in "Date joined", with: @salary_usecase.date_joined
    check "Del status" if @salary_usecase.del_status
    fill_in "Department", with: @salary_usecase.department
    fill_in "Employee name", with: @salary_usecase.employee_name
    fill_in "Gross amount", with: @salary_usecase.gross_amount
    fill_in "Net amount", with: @salary_usecase.net_amount
    fill_in "Par period", with: @salary_usecase.par_period
    fill_in "Position", with: @salary_usecase.position
    check "Processed" if @salary_usecase.processed
    fill_in "Work days", with: @salary_usecase.work_days
    click_on "Create Salary usecase"

    assert_text "Salary usecase was successfully created"
    click_on "Back"
  end

  test "updating a Salary usecase" do
    visit salary_usecases_url
    click_on "Edit", match: :first

    check "Active status" if @salary_usecase.active_status
    fill_in "Date joined", with: @salary_usecase.date_joined
    check "Del status" if @salary_usecase.del_status
    fill_in "Department", with: @salary_usecase.department
    fill_in "Employee name", with: @salary_usecase.employee_name
    fill_in "Gross amount", with: @salary_usecase.gross_amount
    fill_in "Net amount", with: @salary_usecase.net_amount
    fill_in "Par period", with: @salary_usecase.par_period
    fill_in "Position", with: @salary_usecase.position
    check "Processed" if @salary_usecase.processed
    fill_in "Work days", with: @salary_usecase.work_days
    click_on "Update Salary usecase"

    assert_text "Salary usecase was successfully updated"
    click_on "Back"
  end

  test "destroying a Salary usecase" do
    visit salary_usecases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Salary usecase was successfully destroyed"
  end
end
