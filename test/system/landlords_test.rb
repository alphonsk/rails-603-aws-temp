require "application_system_test_case"

class LandlordsTest < ApplicationSystemTestCase
  setup do
    @landlord = landlords(:one)
  end

  test "visiting the index" do
    visit landlords_url
    assert_selector "h1", text: "Landlords"
  end

  test "creating a Landlord" do
    visit landlords_url
    click_on "New Landlord"

    fill_in "City", with: @landlord.city
    fill_in "Email", with: @landlord.email
    fill_in "Fax", with: @landlord.fax
    fill_in "Name", with: @landlord.name
    fill_in "Phone", with: @landlord.phone
    fill_in "State", with: @landlord.state
    fill_in "Street address", with: @landlord.street_address
    fill_in "Suite", with: @landlord.suite
    fill_in "User id", with: @landlord.user_id_id
    fill_in "Zip code", with: @landlord.zip_code
    click_on "Create Landlord"

    assert_text "Landlord was successfully created"
    click_on "Back"
  end

  test "updating a Landlord" do
    visit landlords_url
    click_on "Edit", match: :first

    fill_in "City", with: @landlord.city
    fill_in "Email", with: @landlord.email
    fill_in "Fax", with: @landlord.fax
    fill_in "Name", with: @landlord.name
    fill_in "Phone", with: @landlord.phone
    fill_in "State", with: @landlord.state
    fill_in "Street address", with: @landlord.street_address
    fill_in "Suite", with: @landlord.suite
    fill_in "User id", with: @landlord.user_id_id
    fill_in "Zip code", with: @landlord.zip_code
    click_on "Update Landlord"

    assert_text "Landlord was successfully updated"
    click_on "Back"
  end

  test "destroying a Landlord" do
    visit landlords_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Landlord was successfully destroyed"
  end
end
