require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_index_url
    assert_response :success
  end

  test "should get help" do
    get main_help_url
    assert_response :success
  end

  test "should get faq" do
    get main_faq_url
    assert_response :success
  end

  test "should get privacy" do
    get main_privacy_url
    assert_response :success
  end

  test "should get legal" do
    get main_legal_url
    assert_response :success
  end

  test "should get contact" do
    get main_contact_url
    assert_response :success
  end

end
