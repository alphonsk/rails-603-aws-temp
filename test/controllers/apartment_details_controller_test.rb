require 'test_helper'

class ApartmentDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartment_detail = apartment_details(:one)
  end

  test "should get index" do
    get apartment_details_url
    assert_response :success
  end

  test "should get new" do
    get new_apartment_detail_url
    assert_response :success
  end

  test "should create apartment_detail" do
    assert_difference('ApartmentDetail.count') do
      post apartment_details_url, params: { apartment_detail: { apartment_id: @apartment_detail.apartment_id, available: @apartment_detail.available, bathrooms: @apartment_detail.bathrooms, bedrooms: @apartment_detail.bedrooms, central_air: @apartment_detail.central_air, deposit: @apartment_detail.deposit, description: @apartment_detail.description, dishwasher: @apartment_detail.dishwasher, gym: @apartment_detail.gym, housing_type: @apartment_detail.housing_type, laundry: @apartment_detail.laundry, parking: @apartment_detail.parking, pets: @apartment_detail.pets, rent: @apartment_detail.rent, sq_foot: @apartment_detail.sq_foot, street_parking: @apartment_detail.street_parking, swimming_pool: @apartment_detail.swimming_pool, user_id: @apartment_detail.user_id, washer_dryer: @apartment_detail.washer_dryer } }
    end

    assert_redirected_to apartment_detail_url(ApartmentDetail.last)
  end

  test "should show apartment_detail" do
    get apartment_detail_url(@apartment_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_apartment_detail_url(@apartment_detail)
    assert_response :success
  end

  test "should update apartment_detail" do
    patch apartment_detail_url(@apartment_detail), params: { apartment_detail: { apartment_id: @apartment_detail.apartment_id, available: @apartment_detail.available, bathrooms: @apartment_detail.bathrooms, bedrooms: @apartment_detail.bedrooms, central_air: @apartment_detail.central_air, deposit: @apartment_detail.deposit, description: @apartment_detail.description, dishwasher: @apartment_detail.dishwasher, gym: @apartment_detail.gym, housing_type: @apartment_detail.housing_type, laundry: @apartment_detail.laundry, parking: @apartment_detail.parking, pets: @apartment_detail.pets, rent: @apartment_detail.rent, sq_foot: @apartment_detail.sq_foot, street_parking: @apartment_detail.street_parking, swimming_pool: @apartment_detail.swimming_pool, user_id: @apartment_detail.user_id, washer_dryer: @apartment_detail.washer_dryer } }
    assert_redirected_to apartment_detail_url(@apartment_detail)
  end

  test "should destroy apartment_detail" do
    assert_difference('ApartmentDetail.count', -1) do
      delete apartment_detail_url(@apartment_detail)
    end

    assert_redirected_to apartment_details_url
  end
end
