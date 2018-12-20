require 'test_helper'

class BmwsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bmws_index_url
    assert_response :success
  end

  test "should get show" do
    get bmws_show_url
    assert_response :success
  end

end
