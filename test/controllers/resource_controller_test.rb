require 'test_helper'

class ResourceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resource_index_url
    assert_response :success
  end

  test "should get show" do
    get resource_show_url
    assert_response :success
  end

end
