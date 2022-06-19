class CreateOnesimusTests < ActiveRecord::Migration[6.1]
  def change
    create_table :onesimus_tests do |t|
      t.string :name_of_insured
      t.string :address
      t.string :occupation
      t.string :telephone
      t.string :reg_number
      t.string :make
      t.string :model
      t.string :year_of_make
      t.string :business_private
      t.string :driver_name
      t.string :driver_address
      t.integer :driver_age
      t.string :driver_telephone
      t.string :driving_license_no
      t.string :licence_class
      t.date :date_of_issue
      t.boolean :convicted_of_motoring_offence
      t.date :loss_date
      t.time :time_of_loss
      t.string :accident_location
      t.string :vehicle_speed
      t.string :nature_of_loss
      t.text :accident_desc
      t.date :report_date
      t.string :policy_number

      t.timestamps
    end
  end
end
