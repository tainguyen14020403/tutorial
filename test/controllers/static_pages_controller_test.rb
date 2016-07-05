require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get home_url
    assert_response :success
  end

  test "should get help" do
    get help_url
    assert_response :success
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end
end
