require "test_helper"

class SalaryUsecasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salary_usecase = salary_usecases(:one)
  end

  test "should get index" do
    get salary_usecases_url
    assert_response :success
  end

  test "should get new" do
    get new_salary_usecase_url
    assert_response :success
  end

  test "should create salary_usecase" do
    assert_difference('SalaryUsecase.count') do
      post salary_usecases_url, params: { salary_usecase: { active_status: @salary_usecase.active_status, date_joined: @salary_usecase.date_joined, del_status: @salary_usecase.del_status, department: @salary_usecase.department, employee_name: @salary_usecase.employee_name, gross_amount: @salary_usecase.gross_amount, net_amount: @salary_usecase.net_amount, par_period: @salary_usecase.par_period, position: @salary_usecase.position, processed: @salary_usecase.processed, work_days: @salary_usecase.work_days } }
    end

    assert_redirected_to salary_usecase_url(SalaryUsecase.last)
  end

  test "should show salary_usecase" do
    get salary_usecase_url(@salary_usecase)
    assert_response :success
  end

  test "should get edit" do
    get edit_salary_usecase_url(@salary_usecase)
    assert_response :success
  end

  test "should update salary_usecase" do
    patch salary_usecase_url(@salary_usecase), params: { salary_usecase: { active_status: @salary_usecase.active_status, date_joined: @salary_usecase.date_joined, del_status: @salary_usecase.del_status, department: @salary_usecase.department, employee_name: @salary_usecase.employee_name, gross_amount: @salary_usecase.gross_amount, net_amount: @salary_usecase.net_amount, par_period: @salary_usecase.par_period, position: @salary_usecase.position, processed: @salary_usecase.processed, work_days: @salary_usecase.work_days } }
    assert_redirected_to salary_usecase_url(@salary_usecase)
  end

  test "should destroy salary_usecase" do
    assert_difference('SalaryUsecase.count', -1) do
      delete salary_usecase_url(@salary_usecase)
    end

    assert_redirected_to salary_usecases_url
  end
end
