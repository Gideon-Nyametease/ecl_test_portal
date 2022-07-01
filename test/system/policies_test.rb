require "application_system_test_case"

class PoliciesTest < ApplicationSystemTestCase
  setup do
    @policy = policies(:one)
  end

  test "visiting the index" do
    visit policies_url
    assert_selector "h1", text: "Policies"
  end

  test "creating a Policy" do
    visit policies_url
    click_on "New Policy"

    check "Active status" if @policy.active_status
    check "Del status" if @policy.del_status
    fill_in "Insured from", with: @policy.insured_from
    fill_in "Insured name", with: @policy.insured_name
    fill_in "Insured to", with: @policy.insured_to
    fill_in "Policy number", with: @policy.policy_number
    fill_in "Premium due", with: @policy.premium_due
    click_on "Create Policy"

    assert_text "Policy was successfully created"
    click_on "Back"
  end

  test "updating a Policy" do
    visit policies_url
    click_on "Edit", match: :first

    check "Active status" if @policy.active_status
    check "Del status" if @policy.del_status
    fill_in "Insured from", with: @policy.insured_from
    fill_in "Insured name", with: @policy.insured_name
    fill_in "Insured to", with: @policy.insured_to
    fill_in "Policy number", with: @policy.policy_number
    fill_in "Premium due", with: @policy.premium_due
    click_on "Update Policy"

    assert_text "Policy was successfully updated"
    click_on "Back"
  end

  test "destroying a Policy" do
    visit policies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Policy was successfully destroyed"
  end
end
