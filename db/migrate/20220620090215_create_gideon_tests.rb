class CreateGideonTests < ActiveRecord::Migration[6.1]
  def change
    create_table :gideon_tests do |t|
      t.string :first_name
      t.string :last_name
      t.string :dob
      t.string :nationality
      t.string :phone_number
      t.string :email
      t.string :id_type
      t.string :id_number
      t.string :home_address
      t.string :second_address
      t.string :occupation
      t.string :gender

      t.timestamps
    end
  end
end
