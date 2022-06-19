class CreateMediaUploads < ActiveRecord::Migration[6.1]
  def change
    create_table :media_uploads do |t|
      t.integer :onesimus_test_id
      t.string :image_name
      t.string :location
      t.boolean :active_status
      t.boolean :del_status

      t.timestamps
    end
  end
end
