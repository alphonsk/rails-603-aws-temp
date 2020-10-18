require "application_system_test_case"

class ApartmentDetailsTest < ApplicationSystemTestCase
  setup do
    @apartment_detail = apartment_details(:one)
  end

  test "visiting the index" do
    visit apartment_details_url
    assert_selector "h1", text: "Apartment Details"
  end

  test "creating a Apartment detail" do
    visit apartment_details_url
    click_on "New Apartment Detail"

    fill_in "Apartment", with: @apartment_detail.apartment_id
    fill_in "Available", with: @apartment_detail.available
    fill_in "Bathrooms", with: @apartment_detail.bathrooms
    fill_in "Bedrooms", with: @apartment_detail.bedrooms
    check "Central air" if @apartment_detail.central_air
    fill_in "Deposit", with: @apartment_detail.deposit
    fill_in "Description", with: @apartment_detail.description
    check "Dishwasher" if @apartment_detail.dishwasher
    check "Gym" if @apartment_detail.gym
    fill_in "Housing type", with: @apartment_detail.housing_type
    check "Laundry" if @apartment_detail.laundry
    check "Parking" if @apartment_detail.parking
    check "Pets" if @apartment_detail.pets
    fill_in "Rent", with: @apartment_detail.rent
    fill_in "Sq foot", with: @apartment_detail.sq_foot
    check "Street parking" if @apartment_detail.street_parking
    check "Swimming pool" if @apartment_detail.swimming_pool
    fill_in "User", with: @apartment_detail.user_id
    check "Washer dryer" if @apartment_detail.washer_dryer
    click_on "Create Apartment detail"

    assert_text "Apartment detail was successfully created"
    click_on "Back"
  end

  test "updating a Apartment detail" do
    visit apartment_details_url
    click_on "Edit", match: :first

    fill_in "Apartment", with: @apartment_detail.apartment_id
    fill_in "Available", with: @apartment_detail.available
    fill_in "Bathrooms", with: @apartment_detail.bathrooms
    fill_in "Bedrooms", with: @apartment_detail.bedrooms
    check "Central air" if @apartment_detail.central_air
    fill_in "Deposit", with: @apartment_detail.deposit
    fill_in "Description", with: @apartment_detail.description
    check "Dishwasher" if @apartment_detail.dishwasher
    check "Gym" if @apartment_detail.gym
    fill_in "Housing type", with: @apartment_detail.housing_type
    check "Laundry" if @apartment_detail.laundry
    check "Parking" if @apartment_detail.parking
    check "Pets" if @apartment_detail.pets
    fill_in "Rent", with: @apartment_detail.rent
    fill_in "Sq foot", with: @apartment_detail.sq_foot
    check "Street parking" if @apartment_detail.street_parking
    check "Swimming pool" if @apartment_detail.swimming_pool
    fill_in "User", with: @apartment_detail.user_id
    check "Washer dryer" if @apartment_detail.washer_dryer
    click_on "Update Apartment detail"

    assert_text "Apartment detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Apartment detail" do
    visit apartment_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apartment detail was successfully destroyed"
  end
end
