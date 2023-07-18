require "test_helper"

class PensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pens_index_url
    assert_response :success
  end

  test "should get view" do
    get pens_view_url
    assert_response :success
  end

  test "should get edit" do
    get pens_edit_url
    assert_response :success
  end

  test "should get show" do
    get pens_show_url
    assert_response :success
  end
end
