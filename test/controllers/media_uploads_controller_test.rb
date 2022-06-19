require "test_helper"

class MediaUploadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @media_upload = media_uploads(:one)
  end

  test "should get index" do
    get media_uploads_url
    assert_response :success
  end

  test "should get new" do
    get new_media_upload_url
    assert_response :success
  end

  test "should create media_upload" do
    assert_difference('MediaUpload.count') do
      post media_uploads_url, params: { media_upload: { active_status: @media_upload.active_status, del_status: @media_upload.del_status, image_name: @media_upload.image_name, location: @media_upload.location, onesimus_test_id: @media_upload.onesimus_test_id } }
    end

    assert_redirected_to media_upload_url(MediaUpload.last)
  end

  test "should show media_upload" do
    get media_upload_url(@media_upload)
    assert_response :success
  end

  test "should get edit" do
    get edit_media_upload_url(@media_upload)
    assert_response :success
  end

  test "should update media_upload" do
    patch media_upload_url(@media_upload), params: { media_upload: { active_status: @media_upload.active_status, del_status: @media_upload.del_status, image_name: @media_upload.image_name, location: @media_upload.location, onesimus_test_id: @media_upload.onesimus_test_id } }
    assert_redirected_to media_upload_url(@media_upload)
  end

  test "should destroy media_upload" do
    assert_difference('MediaUpload.count', -1) do
      delete media_upload_url(@media_upload)
    end

    assert_redirected_to media_uploads_url
  end
end
