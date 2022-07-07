class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :account_name
      t.string :account_number
      t.string :branch
      t.boolean :active_status
      t.boolean :del_status

      t.timestamps
    end
  end
end
