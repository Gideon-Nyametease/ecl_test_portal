require "application_system_test_case"

class MediaUploadsTest < ApplicationSystemTestCase
  setup do
    @media_upload = media_uploads(:one)
  end

  test "visiting the index" do
    visit media_uploads_url
    assert_selector "h1", text: "Media Uploads"
  end

  test "creating a Media upload" do
    visit media_uploads_url
    click_on "New Media Upload"

    check "Active status" if @media_upload.active_status
    check "Del status" if @media_upload.del_status
    fill_in "Image name", with: @media_upload.image_name
    fill_in "Location", with: @media_upload.location
    fill_in "Onesimus test", with: @media_upload.onesimus_test_id
    click_on "Create Media upload"

    assert_text "Media upload was successfully created"
    click_on "Back"
  end

  test "updating a Media upload" do
    visit media_uploads_url
    click_on "Edit", match: :first

    check "Active status" if @media_upload.active_status
    check "Del status" if @media_upload.del_status
    fill_in "Image name", with: @media_upload.image_name
    fill_in "Location", with: @media_upload.location
    fill_in "Onesimus test", with: @media_upload.onesimus_test_id
    click_on "Update Media upload"

    assert_text "Media upload was successfully updated"
    click_on "Back"
  end

  test "destroying a Media upload" do
    visit media_uploads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Media upload was successfully destroyed"
  end
end
