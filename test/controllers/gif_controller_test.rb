require 'test_helper'

class GifControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get gif_new_url
    assert_response :success
  end

  test "should get create" do
    get gif_create_url
    assert_response :success
  end

end
