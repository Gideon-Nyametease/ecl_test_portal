class ChangeColumnNameInSalaryUsecases < ActiveRecord::Migration[6.1]
  def change
    change_column :salary_usecases, :active_status, :boolean, default: true
    change_column :salary_usecases, :del_status, :boolean, default: false
    rename_column :salary_usecases, :par_period, :pay_period
  end
end
