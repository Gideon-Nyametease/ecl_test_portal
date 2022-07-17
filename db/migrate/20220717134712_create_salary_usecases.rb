class CreateSalaryUsecases < ActiveRecord::Migration[6.1]
  def change
    create_table :salary_usecases do |t|
      t.string :employee_name
      t.string :position
      t.string :department
      t.date :date_joined
      t.string :par_period
      t.string :work_days
      t.decimal :gross_amount
      t.decimal :net_amount
      t.boolean :active_status
      t.boolean :del_status
      t.boolean :processed

      t.timestamps
    end
  end
end
