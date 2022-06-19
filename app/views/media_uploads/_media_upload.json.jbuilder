json.extract! media_upload, :id, :onesimus_test_id, :image_name, :location, :active_status, :del_status, :created_at, :updated_at
json.url media_upload_url(media_upload, format: :json)
