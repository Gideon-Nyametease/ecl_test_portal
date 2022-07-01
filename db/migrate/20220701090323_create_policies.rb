class CreatePolicies < ActiveRecord::Migration[6.1]
  def change
    create_table :policies do |t|
      t.string :policy_number
      t.string :insured_name
      t.date :insured_from
      t.date :insured_to
      t.decimal :premium_due
      t.boolean :active_status
      t.boolean :del_status

      t.timestamps
    end
  end
end
