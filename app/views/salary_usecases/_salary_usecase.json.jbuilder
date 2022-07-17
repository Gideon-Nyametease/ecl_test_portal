json.extract! salary_usecase, :id, :employee_name, :position, :department, :date_joined, :par_period, :work_days, :gross_amount, :net_amount, :active_status, :del_status, :processed, :created_at, :updated_at
json.url salary_usecase_url(salary_usecase, format: :json)
