class EditColumnInAccounts < ActiveRecord::Migration[6.1]
  def change
    change_column :accounts, :active_status, :boolean, default: true
    change_column :accounts, :del_status, :boolean, default: false
  end
end
