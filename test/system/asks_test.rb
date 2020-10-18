require "application_system_test_case"

class AsksTest < ApplicationSystemTestCase
  setup do
    @ask = asks(:one)
  end

  test "visiting the index" do
    visit asks_url
    assert_selector "h1", text: "Asks"
  end

  test "creating a Ask" do
    visit asks_url
    click_on "New Ask"

    fill_in "Apartment", with: @ask.apartment_id
    fill_in "Message", with: @ask.message
    fill_in "User", with: @ask.user_id
    click_on "Create Ask"

    assert_text "Ask was successfully created"
    click_on "Back"
  end

  test "updating a Ask" do
    visit asks_url
    click_on "Edit", match: :first

    fill_in "Apartment", with: @ask.apartment_id
    fill_in "Message", with: @ask.message
    fill_in "User", with: @ask.user_id
    click_on "Update Ask"

    assert_text "Ask was successfully updated"
    click_on "Back"
  end

  test "destroying a Ask" do
    visit asks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ask was successfully destroyed"
  end
end
