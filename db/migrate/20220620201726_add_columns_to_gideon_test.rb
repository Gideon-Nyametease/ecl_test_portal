class AddColumnsToGideonTest < ActiveRecord::Migration[6.1]
  def change
    add_column :gideon_tests, :new_email, :string
    add_column :gideon_tests, :new_password, :string
  end
end
